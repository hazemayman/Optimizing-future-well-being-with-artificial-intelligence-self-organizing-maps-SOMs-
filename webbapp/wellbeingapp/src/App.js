
import './App.css';
import Question from './Components/Question'; 
import React  , {useState , useEffect} from 'react'
import {
  Routes ,
  Route,
} from "react-router-dom";
import output from './output.png'; 
import axios from 'axios';



function App() {
  let [questionAnswerd , setQuestionAnswered] = useState(false) // bool state that determines to view the questions or the results 
  let [info , setInfo] = useState({}) // state holds the best matching unit as well as the 6 dimensions of the Ryff method
  /* 
    this function is getting called when the user submit the answers
    the function takes the answer and make a post request to the proxy (localhos twith port 5000 flask application backend)
    the endpoint will infeere using the model and the SOM and return the values and update the info state using these values 
    then aafter all this completed the questionAnswerd bool state will be true to view the results and unmount the Question Component

  */
  const sendData = (quesitons_answers) =>{
    console.log(quesitons_answers)
      axios.post('/api/v0/SendData', {
        'Data': quesitons_answers,
      }).then(function (response){
        console.log(response.data)
        setInfo({'wellbeing' : response.data.result , 'BMU' : response.data.BMU})
        setQuestionAnswered(true)
      })
   
  }

  
  let questionBlock =   <div className='main-container' >
                          <Question sendData = {sendData}/>
                        </div>
  return (
    <>
    <Routes>
          {(!questionAnswerd) &&<Route exact path="/" element = {questionBlock}/>}
          {(!questionAnswerd) && <Route exact path="*" element = {questionBlock}/>}   

            {(questionAnswerd) &&<Route exact path="/" element = {
              <>
             
              <div className='result-container'>
              <h1 className='header'>Future well-being Ryff dimensions</h1>
                <table>
                  <tr>
                    <td>Positive relations</td>
                    <td>{info['wellbeing'][0]}</td>
                  </tr>
                  <tr>
                    <td>Self-acceptance </td>
                    <td>{info['wellbeing'][1]}</td>
                  </tr>
                  <tr>
                    <td>Autonomy</td>
                    <td>{info['wellbeing'][2]}</td>
                  </tr>
                  <tr>
                    <td>Personal growth </td>
                    <td>{info['wellbeing'][3]}</td>
                  </tr>
                  <tr>
                    <td>Environmental mastery</td>
                    <td>{info['wellbeing'][4]}</td>
                  </tr>
                  <tr>
                    <td>Purpose in life</td>
                    <td>{info['wellbeing'][5]}</td>
                  </tr>

                </table>

                <hr></hr>
                 <p className='text'>the Current depression level -- {'('+ info['BMU'][0]+' , '+ info['BMU'][1]+ ')'}</p>
                 <img  className='som-image' src={output} alt="the output SOM" />
                <hr></hr>
              </div>
              </>
            }/>}       
    </Routes>
    </>
  );
}

export default App;
