??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
7
Square
x"T
y"T"
Ttype:
2	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
{
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?* 
shared_namedense_15/kernel
t
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes
:	 ?*
dtype0
s
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_15/bias
l
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes	
:?*
dtype0
|
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_16/kernel
u
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel* 
_output_shapes
:
??*
dtype0
s
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_16/bias
l
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes	
:?*
dtype0
|
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_17/kernel
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel* 
_output_shapes
:
??*
dtype0
s
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_17/bias
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes	
:?*
dtype0
|
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_18/kernel
u
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel* 
_output_shapes
:
??*
dtype0
s
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_18/bias
l
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes	
:?*
dtype0
{
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_19/kernel
t
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes
:	?*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*'
shared_nameAdam/dense_15/kernel/m
?
*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes
:	 ?*
dtype0
?
Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_15/bias/m
z
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_16/kernel/m
?
*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_16/bias/m
z
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_17/kernel/m
?
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_17/bias/m
z
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_18/kernel/m
?
*Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_18/bias/m
z
(Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_19/kernel/m
?
*Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/m
y
(Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*'
shared_nameAdam/dense_15/kernel/v
?
*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes
:	 ?*
dtype0
?
Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_15/bias/v
z
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_16/kernel/v
?
*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_16/bias/v
z
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_17/kernel/v
?
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_17/bias/v
z
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_18/kernel/v
?
*Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_18/bias/v
z
(Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_19/kernel/v
?
*Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/v
y
(Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?a
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?`
value?`B?` B?`
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer_with_weights-4
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)_random_generator
*__call__
*+&call_and_return_all_conditional_losses* 
?

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses*
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>_random_generator
?__call__
*@&call_and_return_all_conditional_losses* 
?

Akernel
Bbias
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses*
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S_random_generator
T__call__
*U&call_and_return_all_conditional_losses* 
?

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses*
?
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
?
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h_random_generator
i__call__
*j&call_and_return_all_conditional_losses* 
?

kkernel
lbias
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses*
?
siter

tbeta_1

ubeta_2
	vdecay
wlearning_ratem?m?,m?-m?Am?Bm?Vm?Wm?km?lm?v?v?,v?-v?Av?Bv?Vv?Wv?kv?lv?*
J
0
1
,2
-3
A4
B5
V6
W7
k8
l9*
J
0
1
,2
-3
A4
B5
V6
W7
k8
l9*
* 
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

}serving_default* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
?activity_regularizer_fn
*&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
%	variables
&trainable_variables
'regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

,0
-1*

,0
-1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
?activity_regularizer_fn
*3&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
?activity_regularizer_fn
*9&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

A0
B1*

A0
B1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
?activity_regularizer_fn
*H&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
?activity_regularizer_fn
*N&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_18/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

V0
W1*

V0
W1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
?activity_regularizer_fn
*]&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
?activity_regularizer_fn
*c&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_19/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

k0
l1*

k0
l1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
b
0
1
2
3
4
5
6
7
	8

9
10
11
12*

?0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
?|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_16/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_16/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_18/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_18/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_19/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_16/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_16/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_18/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_18/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_19/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_4Placeholder*'
_output_shapes
:????????? *
dtype0*
shape:????????? 
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4dense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_896784
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp*Adam/dense_18/kernel/m/Read/ReadVariableOp(Adam/dense_18/bias/m/Read/ReadVariableOp*Adam/dense_19/kernel/m/Read/ReadVariableOp(Adam/dense_19/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp*Adam/dense_18/kernel/v/Read/ReadVariableOp(Adam/dense_18/bias/v/Read/ReadVariableOp*Adam/dense_19/kernel/v/Read/ReadVariableOp(Adam/dense_19/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_897226
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/mAdam/dense_17/kernel/mAdam/dense_17/bias/mAdam/dense_18/kernel/mAdam/dense_18/bias/mAdam/dense_19/kernel/mAdam/dense_19/bias/mAdam/dense_15/kernel/vAdam/dense_15/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/vAdam/dense_17/kernel/vAdam/dense_17/bias/vAdam/dense_18/kernel/vAdam/dense_18/bias/vAdam/dense_19/kernel/vAdam/dense_19/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_897347??
?
d
F__inference_dropout_15_layer_call_and_return_conditional_losses_895703

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_13_layer_call_and_return_conditional_losses_896900

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
z
N__inference_leaky_re_lu_13_layer_call_and_return_all_conditional_losses_896873

inputs
identity

identity_1?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_895596?
PartitionedCall_1PartitionedCallPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_13_activity_regularizer_895470a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????S

Identity_1IdentityPartitionedCall_1:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_15_layer_call_and_return_conditional_losses_895539

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_895596

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_15_layer_call_fn_897001

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_895789p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_13_layer_call_fn_896883

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_895907p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_897092

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
0__inference_dense_18_activity_regularizer_895509
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?	
?
D__inference_dense_16_layer_call_and_return_conditional_losses_895577

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_18_layer_call_fn_896968

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_895669p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_895657

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_15_layer_call_and_return_conditional_losses_897018

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_12_layer_call_and_return_conditional_losses_895966

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_13_layer_call_and_return_conditional_losses_895907

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
z
N__inference_leaky_re_lu_14_layer_call_and_return_all_conditional_losses_896932

inputs
identity

identity_1?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_895642?
PartitionedCall_1PartitionedCallPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_14_activity_regularizer_895496a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????S

Identity_1IdentityPartitionedCall_1:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_18_layer_call_and_return_conditional_losses_895669

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_895729

inputs"
dense_15_895540:	 ?
dense_15_895542:	?#
dense_16_895578:
??
dense_16_895580:	?#
dense_17_895624:
??
dense_17_895626:	?#
dense_18_895670:
??
dense_18_895672:	?"
dense_19_895716:	?
dense_19_895718:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7?? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_895540dense_15_895542*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_895539?
,dense_15/ActivityRegularizer/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_15_activity_regularizer_895444{
"dense_15/ActivityRegularizer/ShapeShape)dense_15/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_15/ActivityRegularizer/strided_sliceStridedSlice+dense_15/ActivityRegularizer/Shape:output:09dense_15/ActivityRegularizer/strided_slice/stack:output:0;dense_15/ActivityRegularizer/strided_slice/stack_1:output:0;dense_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_15/ActivityRegularizer/CastCast3dense_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_15/ActivityRegularizer/truedivRealDiv5dense_15/ActivityRegularizer/PartitionedCall:output:0%dense_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_12/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_895558?
dropout_12/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_895565?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_16_895578dense_16_895580*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_895577?
,dense_16/ActivityRegularizer/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_16_activity_regularizer_895457{
"dense_16/ActivityRegularizer/ShapeShape)dense_16/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_16/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_16/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_16/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_16/ActivityRegularizer/strided_sliceStridedSlice+dense_16/ActivityRegularizer/Shape:output:09dense_16/ActivityRegularizer/strided_slice/stack:output:0;dense_16/ActivityRegularizer/strided_slice/stack_1:output:0;dense_16/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_16/ActivityRegularizer/CastCast3dense_16/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_16/ActivityRegularizer/truedivRealDiv5dense_16/ActivityRegularizer/PartitionedCall:output:0%dense_16/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_13/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_895596?
2leaky_re_lu_13/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_13_activity_regularizer_895470
(leaky_re_lu_13/ActivityRegularizer/ShapeShape'leaky_re_lu_13/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_13/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_13/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_13/ActivityRegularizer/Shape:output:0?leaky_re_lu_13/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_13/ActivityRegularizer/CastCast9leaky_re_lu_13/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_13/ActivityRegularizer/truedivRealDiv;leaky_re_lu_13/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_13/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dropout_13/PartitionedCallPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_895611?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0dense_17_895624dense_17_895626*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_895623?
,dense_17/ActivityRegularizer/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_17_activity_regularizer_895483{
"dense_17/ActivityRegularizer/ShapeShape)dense_17/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_17/ActivityRegularizer/strided_sliceStridedSlice+dense_17/ActivityRegularizer/Shape:output:09dense_17/ActivityRegularizer/strided_slice/stack:output:0;dense_17/ActivityRegularizer/strided_slice/stack_1:output:0;dense_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_17/ActivityRegularizer/CastCast3dense_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_17/ActivityRegularizer/truedivRealDiv5dense_17/ActivityRegularizer/PartitionedCall:output:0%dense_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_14/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_895642?
2leaky_re_lu_14/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_14_activity_regularizer_895496
(leaky_re_lu_14/ActivityRegularizer/ShapeShape'leaky_re_lu_14/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_14/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_14/ActivityRegularizer/Shape:output:0?leaky_re_lu_14/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_14/ActivityRegularizer/CastCast9leaky_re_lu_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_14/ActivityRegularizer/truedivRealDiv;leaky_re_lu_14/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dropout_14/PartitionedCallPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_895657?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_18_895670dense_18_895672*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_895669?
,dense_18/ActivityRegularizer/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_18_activity_regularizer_895509{
"dense_18/ActivityRegularizer/ShapeShape)dense_18/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_18/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_18/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_18/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_18/ActivityRegularizer/strided_sliceStridedSlice+dense_18/ActivityRegularizer/Shape:output:09dense_18/ActivityRegularizer/strided_slice/stack:output:0;dense_18/ActivityRegularizer/strided_slice/stack_1:output:0;dense_18/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_18/ActivityRegularizer/CastCast3dense_18/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_18/ActivityRegularizer/truedivRealDiv5dense_18/ActivityRegularizer/PartitionedCall:output:0%dense_18/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_15/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_895688?
2leaky_re_lu_15/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_15_activity_regularizer_895522
(leaky_re_lu_15/ActivityRegularizer/ShapeShape'leaky_re_lu_15/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_15/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_15/ActivityRegularizer/Shape:output:0?leaky_re_lu_15/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_15/ActivityRegularizer/CastCast9leaky_re_lu_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_15/ActivityRegularizer/truedivRealDiv;leaky_re_lu_15/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dropout_15/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_895703?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_19_895716dense_19_895718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_895715x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_16/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_3Identity.leaky_re_lu_13/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(dense_17/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_5Identity.leaky_re_lu_14/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_6Identity(dense_18/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_7Identity.leaky_re_lu_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
M
6__inference_leaky_re_lu_15_activity_regularizer_895522
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896757

inputs:
'dense_15_matmul_readvariableop_resource:	 ?7
(dense_15_biasadd_readvariableop_resource:	?;
'dense_16_matmul_readvariableop_resource:
??7
(dense_16_biasadd_readvariableop_resource:	?;
'dense_17_matmul_readvariableop_resource:
??7
(dense_17_biasadd_readvariableop_resource:	?;
'dense_18_matmul_readvariableop_resource:
??7
(dense_18_biasadd_readvariableop_resource:	?:
'dense_19_matmul_readvariableop_resource:	?6
(dense_19_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7??dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOp?dense_16/BiasAdd/ReadVariableOp?dense_16/MatMul/ReadVariableOp?dense_17/BiasAdd/ReadVariableOp?dense_17/MatMul/ReadVariableOp?dense_18/BiasAdd/ReadVariableOp?dense_18/MatMul/ReadVariableOp?dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0|
dense_15/MatMulMatMulinputs&dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
#dense_15/ActivityRegularizer/SquareSquaredense_15/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
"dense_15/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
 dense_15/ActivityRegularizer/SumSum'dense_15/ActivityRegularizer/Square:y:0+dense_15/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_15/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
 dense_15/ActivityRegularizer/mulMul+dense_15/ActivityRegularizer/mul/x:output:0)dense_15/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
"dense_15/ActivityRegularizer/ShapeShapedense_15/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_15/ActivityRegularizer/strided_sliceStridedSlice+dense_15/ActivityRegularizer/Shape:output:09dense_15/ActivityRegularizer/strided_slice/stack:output:0;dense_15/ActivityRegularizer/strided_slice/stack_1:output:0;dense_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_15/ActivityRegularizer/CastCast3dense_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_15/ActivityRegularizer/truedivRealDiv$dense_15/ActivityRegularizer/mul:z:0%dense_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
leaky_re_lu_12/LeakyRelu	LeakyReludense_15/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_12/dropout/MulMul&leaky_re_lu_12/LeakyRelu:activations:0!dropout_12/dropout/Const:output:0*
T0*(
_output_shapes
:??????????n
dropout_12/dropout/ShapeShape&leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:?
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_16/MatMulMatMuldropout_12/dropout/Mul_1:z:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
#dense_16/ActivityRegularizer/SquareSquaredense_16/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
"dense_16/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
 dense_16/ActivityRegularizer/SumSum'dense_16/ActivityRegularizer/Square:y:0+dense_16/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_16/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
 dense_16/ActivityRegularizer/mulMul+dense_16/ActivityRegularizer/mul/x:output:0)dense_16/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
"dense_16/ActivityRegularizer/ShapeShapedense_16/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_16/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_16/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_16/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_16/ActivityRegularizer/strided_sliceStridedSlice+dense_16/ActivityRegularizer/Shape:output:09dense_16/ActivityRegularizer/strided_slice/stack:output:0;dense_16/ActivityRegularizer/strided_slice/stack_1:output:0;dense_16/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_16/ActivityRegularizer/CastCast3dense_16/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_16/ActivityRegularizer/truedivRealDiv$dense_16/ActivityRegularizer/mul:z:0%dense_16/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
leaky_re_lu_13/LeakyRelu	LeakyReludense_16/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
)leaky_re_lu_13/ActivityRegularizer/SquareSquare&leaky_re_lu_13/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????y
(leaky_re_lu_13/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&leaky_re_lu_13/ActivityRegularizer/SumSum-leaky_re_lu_13/ActivityRegularizer/Square:y:01leaky_re_lu_13/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: m
(leaky_re_lu_13/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
&leaky_re_lu_13/ActivityRegularizer/mulMul1leaky_re_lu_13/ActivityRegularizer/mul/x:output:0/leaky_re_lu_13/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ~
(leaky_re_lu_13/ActivityRegularizer/ShapeShape&leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:?
6leaky_re_lu_13/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_13/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_13/ActivityRegularizer/Shape:output:0?leaky_re_lu_13/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_13/ActivityRegularizer/CastCast9leaky_re_lu_13/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_13/ActivityRegularizer/truedivRealDiv*leaky_re_lu_13/ActivityRegularizer/mul:z:0+leaky_re_lu_13/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ]
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_13/dropout/MulMul&leaky_re_lu_13/LeakyRelu:activations:0!dropout_13/dropout/Const:output:0*
T0*(
_output_shapes
:??????????n
dropout_13/dropout/ShapeShape&leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:?
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0f
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_17/MatMulMatMuldropout_13/dropout/Mul_1:z:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
#dense_17/ActivityRegularizer/SquareSquaredense_17/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
"dense_17/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
 dense_17/ActivityRegularizer/SumSum'dense_17/ActivityRegularizer/Square:y:0+dense_17/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_17/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
 dense_17/ActivityRegularizer/mulMul+dense_17/ActivityRegularizer/mul/x:output:0)dense_17/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
"dense_17/ActivityRegularizer/ShapeShapedense_17/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_17/ActivityRegularizer/strided_sliceStridedSlice+dense_17/ActivityRegularizer/Shape:output:09dense_17/ActivityRegularizer/strided_slice/stack:output:0;dense_17/ActivityRegularizer/strided_slice/stack_1:output:0;dense_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_17/ActivityRegularizer/CastCast3dense_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_17/ActivityRegularizer/truedivRealDiv$dense_17/ActivityRegularizer/mul:z:0%dense_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
leaky_re_lu_14/LeakyRelu	LeakyReludense_17/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
)leaky_re_lu_14/ActivityRegularizer/SquareSquare&leaky_re_lu_14/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????y
(leaky_re_lu_14/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&leaky_re_lu_14/ActivityRegularizer/SumSum-leaky_re_lu_14/ActivityRegularizer/Square:y:01leaky_re_lu_14/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: m
(leaky_re_lu_14/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
&leaky_re_lu_14/ActivityRegularizer/mulMul1leaky_re_lu_14/ActivityRegularizer/mul/x:output:0/leaky_re_lu_14/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ~
(leaky_re_lu_14/ActivityRegularizer/ShapeShape&leaky_re_lu_14/LeakyRelu:activations:0*
T0*
_output_shapes
:?
6leaky_re_lu_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_14/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_14/ActivityRegularizer/Shape:output:0?leaky_re_lu_14/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_14/ActivityRegularizer/CastCast9leaky_re_lu_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_14/ActivityRegularizer/truedivRealDiv*leaky_re_lu_14/ActivityRegularizer/mul:z:0+leaky_re_lu_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ]
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_14/dropout/MulMul&leaky_re_lu_14/LeakyRelu:activations:0!dropout_14/dropout/Const:output:0*
T0*(
_output_shapes
:??????????n
dropout_14/dropout/ShapeShape&leaky_re_lu_14/LeakyRelu:activations:0*
T0*
_output_shapes
:?
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0f
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_18/MatMulMatMuldropout_14/dropout/Mul_1:z:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
#dense_18/ActivityRegularizer/SquareSquaredense_18/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
"dense_18/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
 dense_18/ActivityRegularizer/SumSum'dense_18/ActivityRegularizer/Square:y:0+dense_18/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_18/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
 dense_18/ActivityRegularizer/mulMul+dense_18/ActivityRegularizer/mul/x:output:0)dense_18/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
"dense_18/ActivityRegularizer/ShapeShapedense_18/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_18/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_18/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_18/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_18/ActivityRegularizer/strided_sliceStridedSlice+dense_18/ActivityRegularizer/Shape:output:09dense_18/ActivityRegularizer/strided_slice/stack:output:0;dense_18/ActivityRegularizer/strided_slice/stack_1:output:0;dense_18/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_18/ActivityRegularizer/CastCast3dense_18/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_18/ActivityRegularizer/truedivRealDiv$dense_18/ActivityRegularizer/mul:z:0%dense_18/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
leaky_re_lu_15/LeakyRelu	LeakyReludense_18/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
)leaky_re_lu_15/ActivityRegularizer/SquareSquare&leaky_re_lu_15/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????y
(leaky_re_lu_15/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&leaky_re_lu_15/ActivityRegularizer/SumSum-leaky_re_lu_15/ActivityRegularizer/Square:y:01leaky_re_lu_15/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: m
(leaky_re_lu_15/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
&leaky_re_lu_15/ActivityRegularizer/mulMul1leaky_re_lu_15/ActivityRegularizer/mul/x:output:0/leaky_re_lu_15/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ~
(leaky_re_lu_15/ActivityRegularizer/ShapeShape&leaky_re_lu_15/LeakyRelu:activations:0*
T0*
_output_shapes
:?
6leaky_re_lu_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_15/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_15/ActivityRegularizer/Shape:output:0?leaky_re_lu_15/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_15/ActivityRegularizer/CastCast9leaky_re_lu_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_15/ActivityRegularizer/truedivRealDiv*leaky_re_lu_15/ActivityRegularizer/mul:z:0+leaky_re_lu_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ]
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_15/dropout/MulMul&leaky_re_lu_15/LeakyRelu:activations:0!dropout_15/dropout/Const:output:0*
T0*(
_output_shapes
:??????????n
dropout_15/dropout/ShapeShape&leaky_re_lu_15/LeakyRelu:activations:0*
T0*
_output_shapes
:?
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0f
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_19/MatMulMatMuldropout_15/dropout/Mul_1:z:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_19/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_16/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_3Identity.leaky_re_lu_13/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(dense_17/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_5Identity.leaky_re_lu_14/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_6Identity(dense_18/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_7Identity.leaky_re_lu_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
G
0__inference_dense_16_activity_regularizer_895457
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
d
F__inference_dropout_13_layer_call_and_return_conditional_losses_896888

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?	
!__inference__wrapped_model_895431
input_4G
4sequential_3_dense_15_matmul_readvariableop_resource:	 ?D
5sequential_3_dense_15_biasadd_readvariableop_resource:	?H
4sequential_3_dense_16_matmul_readvariableop_resource:
??D
5sequential_3_dense_16_biasadd_readvariableop_resource:	?H
4sequential_3_dense_17_matmul_readvariableop_resource:
??D
5sequential_3_dense_17_biasadd_readvariableop_resource:	?H
4sequential_3_dense_18_matmul_readvariableop_resource:
??D
5sequential_3_dense_18_biasadd_readvariableop_resource:	?G
4sequential_3_dense_19_matmul_readvariableop_resource:	?C
5sequential_3_dense_19_biasadd_readvariableop_resource:
identity??,sequential_3/dense_15/BiasAdd/ReadVariableOp?+sequential_3/dense_15/MatMul/ReadVariableOp?,sequential_3/dense_16/BiasAdd/ReadVariableOp?+sequential_3/dense_16/MatMul/ReadVariableOp?,sequential_3/dense_17/BiasAdd/ReadVariableOp?+sequential_3/dense_17/MatMul/ReadVariableOp?,sequential_3/dense_18/BiasAdd/ReadVariableOp?+sequential_3/dense_18/MatMul/ReadVariableOp?,sequential_3/dense_19/BiasAdd/ReadVariableOp?+sequential_3/dense_19/MatMul/ReadVariableOp?
+sequential_3/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_15_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0?
sequential_3/dense_15/MatMulMatMulinput_43sequential_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_3/dense_15/BiasAddBiasAdd&sequential_3/dense_15/MatMul:product:04sequential_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
0sequential_3/dense_15/ActivityRegularizer/SquareSquare&sequential_3/dense_15/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
/sequential_3/dense_15/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
-sequential_3/dense_15/ActivityRegularizer/SumSum4sequential_3/dense_15/ActivityRegularizer/Square:y:08sequential_3/dense_15/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: t
/sequential_3/dense_15/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
-sequential_3/dense_15/ActivityRegularizer/mulMul8sequential_3/dense_15/ActivityRegularizer/mul/x:output:06sequential_3/dense_15/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
/sequential_3/dense_15/ActivityRegularizer/ShapeShape&sequential_3/dense_15/BiasAdd:output:0*
T0*
_output_shapes
:?
=sequential_3/dense_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential_3/dense_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential_3/dense_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_3/dense_15/ActivityRegularizer/strided_sliceStridedSlice8sequential_3/dense_15/ActivityRegularizer/Shape:output:0Fsequential_3/dense_15/ActivityRegularizer/strided_slice/stack:output:0Hsequential_3/dense_15/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_3/dense_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential_3/dense_15/ActivityRegularizer/CastCast@sequential_3/dense_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
1sequential_3/dense_15/ActivityRegularizer/truedivRealDiv1sequential_3/dense_15/ActivityRegularizer/mul:z:02sequential_3/dense_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
%sequential_3/leaky_re_lu_12/LeakyRelu	LeakyRelu&sequential_3/dense_15/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
 sequential_3/dropout_12/IdentityIdentity3sequential_3/leaky_re_lu_12/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
+sequential_3/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_16_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_3/dense_16/MatMulMatMul)sequential_3/dropout_12/Identity:output:03sequential_3/dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_3/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_3/dense_16/BiasAddBiasAdd&sequential_3/dense_16/MatMul:product:04sequential_3/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
0sequential_3/dense_16/ActivityRegularizer/SquareSquare&sequential_3/dense_16/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
/sequential_3/dense_16/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
-sequential_3/dense_16/ActivityRegularizer/SumSum4sequential_3/dense_16/ActivityRegularizer/Square:y:08sequential_3/dense_16/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: t
/sequential_3/dense_16/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
-sequential_3/dense_16/ActivityRegularizer/mulMul8sequential_3/dense_16/ActivityRegularizer/mul/x:output:06sequential_3/dense_16/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
/sequential_3/dense_16/ActivityRegularizer/ShapeShape&sequential_3/dense_16/BiasAdd:output:0*
T0*
_output_shapes
:?
=sequential_3/dense_16/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential_3/dense_16/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential_3/dense_16/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_3/dense_16/ActivityRegularizer/strided_sliceStridedSlice8sequential_3/dense_16/ActivityRegularizer/Shape:output:0Fsequential_3/dense_16/ActivityRegularizer/strided_slice/stack:output:0Hsequential_3/dense_16/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_3/dense_16/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential_3/dense_16/ActivityRegularizer/CastCast@sequential_3/dense_16/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
1sequential_3/dense_16/ActivityRegularizer/truedivRealDiv1sequential_3/dense_16/ActivityRegularizer/mul:z:02sequential_3/dense_16/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
%sequential_3/leaky_re_lu_13/LeakyRelu	LeakyRelu&sequential_3/dense_16/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
6sequential_3/leaky_re_lu_13/ActivityRegularizer/SquareSquare3sequential_3/leaky_re_lu_13/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
5sequential_3/leaky_re_lu_13/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
3sequential_3/leaky_re_lu_13/ActivityRegularizer/SumSum:sequential_3/leaky_re_lu_13/ActivityRegularizer/Square:y:0>sequential_3/leaky_re_lu_13/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: z
5sequential_3/leaky_re_lu_13/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3sequential_3/leaky_re_lu_13/ActivityRegularizer/mulMul>sequential_3/leaky_re_lu_13/ActivityRegularizer/mul/x:output:0<sequential_3/leaky_re_lu_13/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
5sequential_3/leaky_re_lu_13/ActivityRegularizer/ShapeShape3sequential_3/leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:?
Csequential_3/leaky_re_lu_13/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Esequential_3/leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Esequential_3/leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_3/leaky_re_lu_13/ActivityRegularizer/strided_sliceStridedSlice>sequential_3/leaky_re_lu_13/ActivityRegularizer/Shape:output:0Lsequential_3/leaky_re_lu_13/ActivityRegularizer/strided_slice/stack:output:0Nsequential_3/leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1:output:0Nsequential_3/leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
4sequential_3/leaky_re_lu_13/ActivityRegularizer/CastCastFsequential_3/leaky_re_lu_13/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
7sequential_3/leaky_re_lu_13/ActivityRegularizer/truedivRealDiv7sequential_3/leaky_re_lu_13/ActivityRegularizer/mul:z:08sequential_3/leaky_re_lu_13/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
 sequential_3/dropout_13/IdentityIdentity3sequential_3/leaky_re_lu_13/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
+sequential_3/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_17_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_3/dense_17/MatMulMatMul)sequential_3/dropout_13/Identity:output:03sequential_3/dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_3/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_3/dense_17/BiasAddBiasAdd&sequential_3/dense_17/MatMul:product:04sequential_3/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
0sequential_3/dense_17/ActivityRegularizer/SquareSquare&sequential_3/dense_17/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
/sequential_3/dense_17/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
-sequential_3/dense_17/ActivityRegularizer/SumSum4sequential_3/dense_17/ActivityRegularizer/Square:y:08sequential_3/dense_17/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: t
/sequential_3/dense_17/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
-sequential_3/dense_17/ActivityRegularizer/mulMul8sequential_3/dense_17/ActivityRegularizer/mul/x:output:06sequential_3/dense_17/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
/sequential_3/dense_17/ActivityRegularizer/ShapeShape&sequential_3/dense_17/BiasAdd:output:0*
T0*
_output_shapes
:?
=sequential_3/dense_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential_3/dense_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential_3/dense_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_3/dense_17/ActivityRegularizer/strided_sliceStridedSlice8sequential_3/dense_17/ActivityRegularizer/Shape:output:0Fsequential_3/dense_17/ActivityRegularizer/strided_slice/stack:output:0Hsequential_3/dense_17/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_3/dense_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential_3/dense_17/ActivityRegularizer/CastCast@sequential_3/dense_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
1sequential_3/dense_17/ActivityRegularizer/truedivRealDiv1sequential_3/dense_17/ActivityRegularizer/mul:z:02sequential_3/dense_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
%sequential_3/leaky_re_lu_14/LeakyRelu	LeakyRelu&sequential_3/dense_17/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
6sequential_3/leaky_re_lu_14/ActivityRegularizer/SquareSquare3sequential_3/leaky_re_lu_14/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
5sequential_3/leaky_re_lu_14/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
3sequential_3/leaky_re_lu_14/ActivityRegularizer/SumSum:sequential_3/leaky_re_lu_14/ActivityRegularizer/Square:y:0>sequential_3/leaky_re_lu_14/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: z
5sequential_3/leaky_re_lu_14/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3sequential_3/leaky_re_lu_14/ActivityRegularizer/mulMul>sequential_3/leaky_re_lu_14/ActivityRegularizer/mul/x:output:0<sequential_3/leaky_re_lu_14/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
5sequential_3/leaky_re_lu_14/ActivityRegularizer/ShapeShape3sequential_3/leaky_re_lu_14/LeakyRelu:activations:0*
T0*
_output_shapes
:?
Csequential_3/leaky_re_lu_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Esequential_3/leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Esequential_3/leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_3/leaky_re_lu_14/ActivityRegularizer/strided_sliceStridedSlice>sequential_3/leaky_re_lu_14/ActivityRegularizer/Shape:output:0Lsequential_3/leaky_re_lu_14/ActivityRegularizer/strided_slice/stack:output:0Nsequential_3/leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1:output:0Nsequential_3/leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
4sequential_3/leaky_re_lu_14/ActivityRegularizer/CastCastFsequential_3/leaky_re_lu_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
7sequential_3/leaky_re_lu_14/ActivityRegularizer/truedivRealDiv7sequential_3/leaky_re_lu_14/ActivityRegularizer/mul:z:08sequential_3/leaky_re_lu_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
 sequential_3/dropout_14/IdentityIdentity3sequential_3/leaky_re_lu_14/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
+sequential_3/dense_18/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_3/dense_18/MatMulMatMul)sequential_3/dropout_14/Identity:output:03sequential_3/dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_3/dense_18/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_3/dense_18/BiasAddBiasAdd&sequential_3/dense_18/MatMul:product:04sequential_3/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
0sequential_3/dense_18/ActivityRegularizer/SquareSquare&sequential_3/dense_18/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
/sequential_3/dense_18/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
-sequential_3/dense_18/ActivityRegularizer/SumSum4sequential_3/dense_18/ActivityRegularizer/Square:y:08sequential_3/dense_18/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: t
/sequential_3/dense_18/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
-sequential_3/dense_18/ActivityRegularizer/mulMul8sequential_3/dense_18/ActivityRegularizer/mul/x:output:06sequential_3/dense_18/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
/sequential_3/dense_18/ActivityRegularizer/ShapeShape&sequential_3/dense_18/BiasAdd:output:0*
T0*
_output_shapes
:?
=sequential_3/dense_18/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential_3/dense_18/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential_3/dense_18/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_3/dense_18/ActivityRegularizer/strided_sliceStridedSlice8sequential_3/dense_18/ActivityRegularizer/Shape:output:0Fsequential_3/dense_18/ActivityRegularizer/strided_slice/stack:output:0Hsequential_3/dense_18/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_3/dense_18/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential_3/dense_18/ActivityRegularizer/CastCast@sequential_3/dense_18/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
1sequential_3/dense_18/ActivityRegularizer/truedivRealDiv1sequential_3/dense_18/ActivityRegularizer/mul:z:02sequential_3/dense_18/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
%sequential_3/leaky_re_lu_15/LeakyRelu	LeakyRelu&sequential_3/dense_18/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
6sequential_3/leaky_re_lu_15/ActivityRegularizer/SquareSquare3sequential_3/leaky_re_lu_15/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
5sequential_3/leaky_re_lu_15/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
3sequential_3/leaky_re_lu_15/ActivityRegularizer/SumSum:sequential_3/leaky_re_lu_15/ActivityRegularizer/Square:y:0>sequential_3/leaky_re_lu_15/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: z
5sequential_3/leaky_re_lu_15/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3sequential_3/leaky_re_lu_15/ActivityRegularizer/mulMul>sequential_3/leaky_re_lu_15/ActivityRegularizer/mul/x:output:0<sequential_3/leaky_re_lu_15/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
5sequential_3/leaky_re_lu_15/ActivityRegularizer/ShapeShape3sequential_3/leaky_re_lu_15/LeakyRelu:activations:0*
T0*
_output_shapes
:?
Csequential_3/leaky_re_lu_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Esequential_3/leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Esequential_3/leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_3/leaky_re_lu_15/ActivityRegularizer/strided_sliceStridedSlice>sequential_3/leaky_re_lu_15/ActivityRegularizer/Shape:output:0Lsequential_3/leaky_re_lu_15/ActivityRegularizer/strided_slice/stack:output:0Nsequential_3/leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1:output:0Nsequential_3/leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
4sequential_3/leaky_re_lu_15/ActivityRegularizer/CastCastFsequential_3/leaky_re_lu_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
7sequential_3/leaky_re_lu_15/ActivityRegularizer/truedivRealDiv7sequential_3/leaky_re_lu_15/ActivityRegularizer/mul:z:08sequential_3/leaky_re_lu_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
 sequential_3/dropout_15/IdentityIdentity3sequential_3/leaky_re_lu_15/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
+sequential_3/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_19_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_3/dense_19/MatMulMatMul)sequential_3/dropout_15/Identity:output:03sequential_3/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,sequential_3/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_3/dense_19/BiasAddBiasAdd&sequential_3/dense_19/MatMul:product:04sequential_3/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????u
IdentityIdentity&sequential_3/dense_19/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp-^sequential_3/dense_15/BiasAdd/ReadVariableOp,^sequential_3/dense_15/MatMul/ReadVariableOp-^sequential_3/dense_16/BiasAdd/ReadVariableOp,^sequential_3/dense_16/MatMul/ReadVariableOp-^sequential_3/dense_17/BiasAdd/ReadVariableOp,^sequential_3/dense_17/MatMul/ReadVariableOp-^sequential_3/dense_18/BiasAdd/ReadVariableOp,^sequential_3/dense_18/MatMul/ReadVariableOp-^sequential_3/dense_19/BiasAdd/ReadVariableOp,^sequential_3/dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 2\
,sequential_3/dense_15/BiasAdd/ReadVariableOp,sequential_3/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_15/MatMul/ReadVariableOp+sequential_3/dense_15/MatMul/ReadVariableOp2\
,sequential_3/dense_16/BiasAdd/ReadVariableOp,sequential_3/dense_16/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_16/MatMul/ReadVariableOp+sequential_3/dense_16/MatMul/ReadVariableOp2\
,sequential_3/dense_17/BiasAdd/ReadVariableOp,sequential_3/dense_17/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_17/MatMul/ReadVariableOp+sequential_3/dense_17/MatMul/ReadVariableOp2\
,sequential_3/dense_18/BiasAdd/ReadVariableOp,sequential_3/dense_18/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_18/MatMul/ReadVariableOp+sequential_3/dense_18/MatMul/ReadVariableOp2\
,sequential_3/dense_19/BiasAdd/ReadVariableOp,sequential_3/dense_19/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_19/MatMul/ReadVariableOp+sequential_3/dense_19/MatMul/ReadVariableOp:P L
'
_output_shapes
:????????? 
!
_user_specified_name	input_4
?
?
)__inference_dense_15_layer_call_fn_896793

inputs
unknown:	 ?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_895539p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_dense_17_layer_call_fn_896909

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_895623p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_15_layer_call_and_return_conditional_losses_895789

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896131

inputs"
dense_15_896034:	 ?
dense_15_896036:	?#
dense_16_896049:
??
dense_16_896051:	?#
dense_17_896072:
??
dense_17_896074:	?#
dense_18_896095:
??
dense_18_896097:	?"
dense_19_896118:	?
dense_19_896120:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7?? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?"dropout_12/StatefulPartitionedCall?"dropout_13/StatefulPartitionedCall?"dropout_14/StatefulPartitionedCall?"dropout_15/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_896034dense_15_896036*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_895539?
,dense_15/ActivityRegularizer/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_15_activity_regularizer_895444{
"dense_15/ActivityRegularizer/ShapeShape)dense_15/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_15/ActivityRegularizer/strided_sliceStridedSlice+dense_15/ActivityRegularizer/Shape:output:09dense_15/ActivityRegularizer/strided_slice/stack:output:0;dense_15/ActivityRegularizer/strided_slice/stack_1:output:0;dense_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_15/ActivityRegularizer/CastCast3dense_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_15/ActivityRegularizer/truedivRealDiv5dense_15/ActivityRegularizer/PartitionedCall:output:0%dense_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_12/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_895558?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_895966?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_16_896049dense_16_896051*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_895577?
,dense_16/ActivityRegularizer/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_16_activity_regularizer_895457{
"dense_16/ActivityRegularizer/ShapeShape)dense_16/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_16/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_16/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_16/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_16/ActivityRegularizer/strided_sliceStridedSlice+dense_16/ActivityRegularizer/Shape:output:09dense_16/ActivityRegularizer/strided_slice/stack:output:0;dense_16/ActivityRegularizer/strided_slice/stack_1:output:0;dense_16/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_16/ActivityRegularizer/CastCast3dense_16/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_16/ActivityRegularizer/truedivRealDiv5dense_16/ActivityRegularizer/PartitionedCall:output:0%dense_16/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_13/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_895596?
2leaky_re_lu_13/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_13_activity_regularizer_895470
(leaky_re_lu_13/ActivityRegularizer/ShapeShape'leaky_re_lu_13/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_13/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_13/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_13/ActivityRegularizer/Shape:output:0?leaky_re_lu_13/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_13/ActivityRegularizer/CastCast9leaky_re_lu_13/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_13/ActivityRegularizer/truedivRealDiv;leaky_re_lu_13/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_13/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_895907?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0dense_17_896072dense_17_896074*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_895623?
,dense_17/ActivityRegularizer/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_17_activity_regularizer_895483{
"dense_17/ActivityRegularizer/ShapeShape)dense_17/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_17/ActivityRegularizer/strided_sliceStridedSlice+dense_17/ActivityRegularizer/Shape:output:09dense_17/ActivityRegularizer/strided_slice/stack:output:0;dense_17/ActivityRegularizer/strided_slice/stack_1:output:0;dense_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_17/ActivityRegularizer/CastCast3dense_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_17/ActivityRegularizer/truedivRealDiv5dense_17/ActivityRegularizer/PartitionedCall:output:0%dense_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_14/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_895642?
2leaky_re_lu_14/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_14_activity_regularizer_895496
(leaky_re_lu_14/ActivityRegularizer/ShapeShape'leaky_re_lu_14/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_14/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_14/ActivityRegularizer/Shape:output:0?leaky_re_lu_14/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_14/ActivityRegularizer/CastCast9leaky_re_lu_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_14/ActivityRegularizer/truedivRealDiv;leaky_re_lu_14/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_895848?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_18_896095dense_18_896097*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_895669?
,dense_18/ActivityRegularizer/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_18_activity_regularizer_895509{
"dense_18/ActivityRegularizer/ShapeShape)dense_18/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_18/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_18/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_18/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_18/ActivityRegularizer/strided_sliceStridedSlice+dense_18/ActivityRegularizer/Shape:output:09dense_18/ActivityRegularizer/strided_slice/stack:output:0;dense_18/ActivityRegularizer/strided_slice/stack_1:output:0;dense_18/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_18/ActivityRegularizer/CastCast3dense_18/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_18/ActivityRegularizer/truedivRealDiv5dense_18/ActivityRegularizer/PartitionedCall:output:0%dense_18/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_15/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_895688?
2leaky_re_lu_15/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_15_activity_regularizer_895522
(leaky_re_lu_15/ActivityRegularizer/ShapeShape'leaky_re_lu_15/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_15/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_15/ActivityRegularizer/Shape:output:0?leaky_re_lu_15/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_15/ActivityRegularizer/CastCast9leaky_re_lu_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_15/ActivityRegularizer/truedivRealDiv;leaky_re_lu_15/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_895789?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0dense_19_896118dense_19_896120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_895715x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_16/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_3Identity.leaky_re_lu_13/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(dense_17/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_5Identity.leaky_re_lu_14/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_6Identity(dense_18/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_7Identity.leaky_re_lu_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_897062

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896596

inputs:
'dense_15_matmul_readvariableop_resource:	 ?7
(dense_15_biasadd_readvariableop_resource:	?;
'dense_16_matmul_readvariableop_resource:
??7
(dense_16_biasadd_readvariableop_resource:	?;
'dense_17_matmul_readvariableop_resource:
??7
(dense_17_biasadd_readvariableop_resource:	?;
'dense_18_matmul_readvariableop_resource:
??7
(dense_18_biasadd_readvariableop_resource:	?:
'dense_19_matmul_readvariableop_resource:	?6
(dense_19_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7??dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOp?dense_16/BiasAdd/ReadVariableOp?dense_16/MatMul/ReadVariableOp?dense_17/BiasAdd/ReadVariableOp?dense_17/MatMul/ReadVariableOp?dense_18/BiasAdd/ReadVariableOp?dense_18/MatMul/ReadVariableOp?dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0|
dense_15/MatMulMatMulinputs&dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
#dense_15/ActivityRegularizer/SquareSquaredense_15/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
"dense_15/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
 dense_15/ActivityRegularizer/SumSum'dense_15/ActivityRegularizer/Square:y:0+dense_15/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_15/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
 dense_15/ActivityRegularizer/mulMul+dense_15/ActivityRegularizer/mul/x:output:0)dense_15/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
"dense_15/ActivityRegularizer/ShapeShapedense_15/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_15/ActivityRegularizer/strided_sliceStridedSlice+dense_15/ActivityRegularizer/Shape:output:09dense_15/ActivityRegularizer/strided_slice/stack:output:0;dense_15/ActivityRegularizer/strided_slice/stack_1:output:0;dense_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_15/ActivityRegularizer/CastCast3dense_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_15/ActivityRegularizer/truedivRealDiv$dense_15/ActivityRegularizer/mul:z:0%dense_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
leaky_re_lu_12/LeakyRelu	LeakyReludense_15/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>z
dropout_12/IdentityIdentity&leaky_re_lu_12/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_16/MatMulMatMuldropout_12/Identity:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
#dense_16/ActivityRegularizer/SquareSquaredense_16/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
"dense_16/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
 dense_16/ActivityRegularizer/SumSum'dense_16/ActivityRegularizer/Square:y:0+dense_16/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_16/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
 dense_16/ActivityRegularizer/mulMul+dense_16/ActivityRegularizer/mul/x:output:0)dense_16/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
"dense_16/ActivityRegularizer/ShapeShapedense_16/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_16/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_16/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_16/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_16/ActivityRegularizer/strided_sliceStridedSlice+dense_16/ActivityRegularizer/Shape:output:09dense_16/ActivityRegularizer/strided_slice/stack:output:0;dense_16/ActivityRegularizer/strided_slice/stack_1:output:0;dense_16/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_16/ActivityRegularizer/CastCast3dense_16/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_16/ActivityRegularizer/truedivRealDiv$dense_16/ActivityRegularizer/mul:z:0%dense_16/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
leaky_re_lu_13/LeakyRelu	LeakyReludense_16/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
)leaky_re_lu_13/ActivityRegularizer/SquareSquare&leaky_re_lu_13/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????y
(leaky_re_lu_13/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&leaky_re_lu_13/ActivityRegularizer/SumSum-leaky_re_lu_13/ActivityRegularizer/Square:y:01leaky_re_lu_13/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: m
(leaky_re_lu_13/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
&leaky_re_lu_13/ActivityRegularizer/mulMul1leaky_re_lu_13/ActivityRegularizer/mul/x:output:0/leaky_re_lu_13/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ~
(leaky_re_lu_13/ActivityRegularizer/ShapeShape&leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:?
6leaky_re_lu_13/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_13/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_13/ActivityRegularizer/Shape:output:0?leaky_re_lu_13/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_13/ActivityRegularizer/CastCast9leaky_re_lu_13/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_13/ActivityRegularizer/truedivRealDiv*leaky_re_lu_13/ActivityRegularizer/mul:z:0+leaky_re_lu_13/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
dropout_13/IdentityIdentity&leaky_re_lu_13/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_17/MatMulMatMuldropout_13/Identity:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
#dense_17/ActivityRegularizer/SquareSquaredense_17/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
"dense_17/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
 dense_17/ActivityRegularizer/SumSum'dense_17/ActivityRegularizer/Square:y:0+dense_17/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_17/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
 dense_17/ActivityRegularizer/mulMul+dense_17/ActivityRegularizer/mul/x:output:0)dense_17/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
"dense_17/ActivityRegularizer/ShapeShapedense_17/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_17/ActivityRegularizer/strided_sliceStridedSlice+dense_17/ActivityRegularizer/Shape:output:09dense_17/ActivityRegularizer/strided_slice/stack:output:0;dense_17/ActivityRegularizer/strided_slice/stack_1:output:0;dense_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_17/ActivityRegularizer/CastCast3dense_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_17/ActivityRegularizer/truedivRealDiv$dense_17/ActivityRegularizer/mul:z:0%dense_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
leaky_re_lu_14/LeakyRelu	LeakyReludense_17/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
)leaky_re_lu_14/ActivityRegularizer/SquareSquare&leaky_re_lu_14/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????y
(leaky_re_lu_14/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&leaky_re_lu_14/ActivityRegularizer/SumSum-leaky_re_lu_14/ActivityRegularizer/Square:y:01leaky_re_lu_14/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: m
(leaky_re_lu_14/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
&leaky_re_lu_14/ActivityRegularizer/mulMul1leaky_re_lu_14/ActivityRegularizer/mul/x:output:0/leaky_re_lu_14/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ~
(leaky_re_lu_14/ActivityRegularizer/ShapeShape&leaky_re_lu_14/LeakyRelu:activations:0*
T0*
_output_shapes
:?
6leaky_re_lu_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_14/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_14/ActivityRegularizer/Shape:output:0?leaky_re_lu_14/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_14/ActivityRegularizer/CastCast9leaky_re_lu_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_14/ActivityRegularizer/truedivRealDiv*leaky_re_lu_14/ActivityRegularizer/mul:z:0+leaky_re_lu_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
dropout_14/IdentityIdentity&leaky_re_lu_14/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_18/MatMulMatMuldropout_14/Identity:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
#dense_18/ActivityRegularizer/SquareSquaredense_18/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
"dense_18/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
 dense_18/ActivityRegularizer/SumSum'dense_18/ActivityRegularizer/Square:y:0+dense_18/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_18/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
 dense_18/ActivityRegularizer/mulMul+dense_18/ActivityRegularizer/mul/x:output:0)dense_18/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
"dense_18/ActivityRegularizer/ShapeShapedense_18/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_18/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_18/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_18/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_18/ActivityRegularizer/strided_sliceStridedSlice+dense_18/ActivityRegularizer/Shape:output:09dense_18/ActivityRegularizer/strided_slice/stack:output:0;dense_18/ActivityRegularizer/strided_slice/stack_1:output:0;dense_18/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_18/ActivityRegularizer/CastCast3dense_18/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_18/ActivityRegularizer/truedivRealDiv$dense_18/ActivityRegularizer/mul:z:0%dense_18/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
leaky_re_lu_15/LeakyRelu	LeakyReludense_18/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>?
)leaky_re_lu_15/ActivityRegularizer/SquareSquare&leaky_re_lu_15/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????y
(leaky_re_lu_15/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&leaky_re_lu_15/ActivityRegularizer/SumSum-leaky_re_lu_15/ActivityRegularizer/Square:y:01leaky_re_lu_15/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: m
(leaky_re_lu_15/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
&leaky_re_lu_15/ActivityRegularizer/mulMul1leaky_re_lu_15/ActivityRegularizer/mul/x:output:0/leaky_re_lu_15/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ~
(leaky_re_lu_15/ActivityRegularizer/ShapeShape&leaky_re_lu_15/LeakyRelu:activations:0*
T0*
_output_shapes
:?
6leaky_re_lu_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_15/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_15/ActivityRegularizer/Shape:output:0?leaky_re_lu_15/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_15/ActivityRegularizer/CastCast9leaky_re_lu_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_15/ActivityRegularizer/truedivRealDiv*leaky_re_lu_15/ActivityRegularizer/mul:z:0+leaky_re_lu_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: z
dropout_15/IdentityIdentity&leaky_re_lu_15/LeakyRelu:activations:0*
T0*(
_output_shapes
:???????????
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_19/MatMulMatMuldropout_15/Identity:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_19/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_16/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_3Identity.leaky_re_lu_13/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(dense_17/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_5Identity.leaky_re_lu_14/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_6Identity(dense_18/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_7Identity.leaky_re_lu_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_896784
input_4
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_895431o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:????????? 
!
_user_specified_name	input_4
?

?
-__inference_sequential_3_layer_call_fn_896431

inputs
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout

2*
_collective_manager_ids
 *5
_output_shapes#
!:?????????: : : : : : : *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_895729o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_12_layer_call_fn_896809

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_895558a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_13_layer_call_fn_896878

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_895611a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_12_layer_call_and_return_conditional_losses_896841

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_3_layer_call_fn_896193
input_4
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout

2*
_collective_manager_ids
 *5
_output_shapes#
!:?????????: : : : : : : *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_896131o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:????????? 
!
_user_specified_name	input_4
?
G
+__inference_dropout_15_layer_call_fn_896996

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_895703a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896393
input_4"
dense_15_896296:	 ?
dense_15_896298:	?#
dense_16_896311:
??
dense_16_896313:	?#
dense_17_896334:
??
dense_17_896336:	?#
dense_18_896357:
??
dense_18_896359:	?"
dense_19_896380:	?
dense_19_896382:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7?? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?"dropout_12/StatefulPartitionedCall?"dropout_13/StatefulPartitionedCall?"dropout_14/StatefulPartitionedCall?"dropout_15/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinput_4dense_15_896296dense_15_896298*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_895539?
,dense_15/ActivityRegularizer/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_15_activity_regularizer_895444{
"dense_15/ActivityRegularizer/ShapeShape)dense_15/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_15/ActivityRegularizer/strided_sliceStridedSlice+dense_15/ActivityRegularizer/Shape:output:09dense_15/ActivityRegularizer/strided_slice/stack:output:0;dense_15/ActivityRegularizer/strided_slice/stack_1:output:0;dense_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_15/ActivityRegularizer/CastCast3dense_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_15/ActivityRegularizer/truedivRealDiv5dense_15/ActivityRegularizer/PartitionedCall:output:0%dense_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_12/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_895558?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_895966?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_16_896311dense_16_896313*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_895577?
,dense_16/ActivityRegularizer/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_16_activity_regularizer_895457{
"dense_16/ActivityRegularizer/ShapeShape)dense_16/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_16/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_16/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_16/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_16/ActivityRegularizer/strided_sliceStridedSlice+dense_16/ActivityRegularizer/Shape:output:09dense_16/ActivityRegularizer/strided_slice/stack:output:0;dense_16/ActivityRegularizer/strided_slice/stack_1:output:0;dense_16/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_16/ActivityRegularizer/CastCast3dense_16/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_16/ActivityRegularizer/truedivRealDiv5dense_16/ActivityRegularizer/PartitionedCall:output:0%dense_16/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_13/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_895596?
2leaky_re_lu_13/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_13_activity_regularizer_895470
(leaky_re_lu_13/ActivityRegularizer/ShapeShape'leaky_re_lu_13/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_13/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_13/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_13/ActivityRegularizer/Shape:output:0?leaky_re_lu_13/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_13/ActivityRegularizer/CastCast9leaky_re_lu_13/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_13/ActivityRegularizer/truedivRealDiv;leaky_re_lu_13/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_13/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_895907?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0dense_17_896334dense_17_896336*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_895623?
,dense_17/ActivityRegularizer/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_17_activity_regularizer_895483{
"dense_17/ActivityRegularizer/ShapeShape)dense_17/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_17/ActivityRegularizer/strided_sliceStridedSlice+dense_17/ActivityRegularizer/Shape:output:09dense_17/ActivityRegularizer/strided_slice/stack:output:0;dense_17/ActivityRegularizer/strided_slice/stack_1:output:0;dense_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_17/ActivityRegularizer/CastCast3dense_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_17/ActivityRegularizer/truedivRealDiv5dense_17/ActivityRegularizer/PartitionedCall:output:0%dense_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_14/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_895642?
2leaky_re_lu_14/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_14_activity_regularizer_895496
(leaky_re_lu_14/ActivityRegularizer/ShapeShape'leaky_re_lu_14/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_14/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_14/ActivityRegularizer/Shape:output:0?leaky_re_lu_14/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_14/ActivityRegularizer/CastCast9leaky_re_lu_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_14/ActivityRegularizer/truedivRealDiv;leaky_re_lu_14/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_895848?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_18_896357dense_18_896359*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_895669?
,dense_18/ActivityRegularizer/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_18_activity_regularizer_895509{
"dense_18/ActivityRegularizer/ShapeShape)dense_18/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_18/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_18/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_18/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_18/ActivityRegularizer/strided_sliceStridedSlice+dense_18/ActivityRegularizer/Shape:output:09dense_18/ActivityRegularizer/strided_slice/stack:output:0;dense_18/ActivityRegularizer/strided_slice/stack_1:output:0;dense_18/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_18/ActivityRegularizer/CastCast3dense_18/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_18/ActivityRegularizer/truedivRealDiv5dense_18/ActivityRegularizer/PartitionedCall:output:0%dense_18/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_15/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_895688?
2leaky_re_lu_15/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_15_activity_regularizer_895522
(leaky_re_lu_15/ActivityRegularizer/ShapeShape'leaky_re_lu_15/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_15/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_15/ActivityRegularizer/Shape:output:0?leaky_re_lu_15/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_15/ActivityRegularizer/CastCast9leaky_re_lu_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_15/ActivityRegularizer/truedivRealDiv;leaky_re_lu_15/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_895789?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0dense_19_896380dense_19_896382*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_895715x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_16/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_3Identity.leaky_re_lu_13/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(dense_17/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_5Identity.leaky_re_lu_14/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_6Identity(dense_18/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_7Identity.leaky_re_lu_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall:P L
'
_output_shapes
:????????? 
!
_user_specified_name	input_4
?
f
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_895688

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_17_layer_call_and_return_conditional_losses_897072

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_17_layer_call_and_return_conditional_losses_895623

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_16_layer_call_and_return_conditional_losses_897057

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_18_layer_call_and_return_conditional_losses_897087

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_895558

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_896829

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_16_layer_call_fn_896850

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_895577p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_896814

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_14_layer_call_and_return_conditional_losses_896959

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_19_layer_call_fn_897027

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_895715o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_13_layer_call_fn_896866

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_895596a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_12_layer_call_fn_896824

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_895966p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
6__inference_leaky_re_lu_14_activity_regularizer_895496
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
f
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_897077

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_14_layer_call_fn_896937

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_895657a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_15_layer_call_and_return_conditional_losses_897047

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
z
N__inference_leaky_re_lu_15_layer_call_and_return_all_conditional_losses_896991

inputs
identity

identity_1?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_895688?
PartitionedCall_1PartitionedCallPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_15_activity_regularizer_895522a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????S

Identity_1IdentityPartitionedCall_1:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
0__inference_dense_17_activity_regularizer_895483
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_895565

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_dense_15_layer_call_and_return_all_conditional_losses_896804

inputs
unknown:	 ?
	unknown_0:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_895539?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_15_activity_regularizer_895444p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
G
0__inference_dense_15_activity_regularizer_895444
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?

?
-__inference_sequential_3_layer_call_fn_896463

inputs
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout

2*
_collective_manager_ids
 *5
_output_shapes#
!:?????????: : : : : : : *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_896131o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_13_layer_call_and_return_conditional_losses_895611

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_896947

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_895642

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_dense_16_layer_call_and_return_all_conditional_losses_896861

inputs
unknown:
??
	unknown_0:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_895577?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_16_activity_regularizer_895457p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?N
?
__inference__traced_save_897226
file_prefix.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	 ?:?:
??:?:
??:?:
??:?:	?:: : : : : : : :	 ?:?:
??:?:
??:?:
??:?:	?::	 ?:?:
??:?:
??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%	!

_output_shapes
:	?: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 ?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	 ?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:& "
 
_output_shapes
:
??:!!

_output_shapes	
:?:&""
 
_output_shapes
:
??:!#

_output_shapes	
:?:%$!

_output_shapes
:	?: %

_output_shapes
::&

_output_shapes
: 
?
G
+__inference_dropout_12_layer_call_fn_896819

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_895565a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_15_layer_call_and_return_conditional_losses_897006

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_3_layer_call_fn_895759
input_4
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout

2*
_collective_manager_ids
 *5
_output_shapes#
!:?????????: : : : : : : *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_895729o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:????????? 
!
_user_specified_name	input_4
?
K
/__inference_leaky_re_lu_15_layer_call_fn_896984

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_895688a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_19_layer_call_and_return_conditional_losses_897037

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_14_layer_call_and_return_conditional_losses_895848

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_14_layer_call_fn_896925

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_895642a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
6__inference_leaky_re_lu_13_activity_regularizer_895470
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
H__inference_dense_17_layer_call_and_return_all_conditional_losses_896920

inputs
unknown:
??
	unknown_0:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_895623?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_17_activity_regularizer_895483p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_19_layer_call_and_return_conditional_losses_895715

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_14_layer_call_fn_896942

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_895848p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_dense_18_layer_call_and_return_all_conditional_losses_896979

inputs
unknown:
??
	unknown_0:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_895669?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_18_activity_regularizer_895509p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_897347
file_prefix3
 assignvariableop_dense_15_kernel:	 ?/
 assignvariableop_1_dense_15_bias:	?6
"assignvariableop_2_dense_16_kernel:
??/
 assignvariableop_3_dense_16_bias:	?6
"assignvariableop_4_dense_17_kernel:
??/
 assignvariableop_5_dense_17_bias:	?6
"assignvariableop_6_dense_18_kernel:
??/
 assignvariableop_7_dense_18_bias:	?5
"assignvariableop_8_dense_19_kernel:	?.
 assignvariableop_9_dense_19_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: =
*assignvariableop_17_adam_dense_15_kernel_m:	 ?7
(assignvariableop_18_adam_dense_15_bias_m:	?>
*assignvariableop_19_adam_dense_16_kernel_m:
??7
(assignvariableop_20_adam_dense_16_bias_m:	?>
*assignvariableop_21_adam_dense_17_kernel_m:
??7
(assignvariableop_22_adam_dense_17_bias_m:	?>
*assignvariableop_23_adam_dense_18_kernel_m:
??7
(assignvariableop_24_adam_dense_18_bias_m:	?=
*assignvariableop_25_adam_dense_19_kernel_m:	?6
(assignvariableop_26_adam_dense_19_bias_m:=
*assignvariableop_27_adam_dense_15_kernel_v:	 ?7
(assignvariableop_28_adam_dense_15_bias_v:	?>
*assignvariableop_29_adam_dense_16_kernel_v:
??7
(assignvariableop_30_adam_dense_16_bias_v:	?>
*assignvariableop_31_adam_dense_17_kernel_v:
??7
(assignvariableop_32_adam_dense_17_bias_v:	?>
*assignvariableop_33_adam_dense_18_kernel_v:
??7
(assignvariableop_34_adam_dense_18_bias_v:	?=
*assignvariableop_35_adam_dense_19_kernel_v:	?6
(assignvariableop_36_adam_dense_19_bias_v:
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_16_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_16_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_17_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_17_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_18_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_18_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_19_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_19_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_15_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_15_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_16_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_16_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_17_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_17_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_18_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_18_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_19_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_19_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_15_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_15_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_16_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_16_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_17_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_17_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_18_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_18_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_19_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_19_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896293
input_4"
dense_15_896196:	 ?
dense_15_896198:	?#
dense_16_896211:
??
dense_16_896213:	?#
dense_17_896234:
??
dense_17_896236:	?#
dense_18_896257:
??
dense_18_896259:	?"
dense_19_896280:	?
dense_19_896282:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7?? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinput_4dense_15_896196dense_15_896198*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_895539?
,dense_15/ActivityRegularizer/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_15_activity_regularizer_895444{
"dense_15/ActivityRegularizer/ShapeShape)dense_15/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_15/ActivityRegularizer/strided_sliceStridedSlice+dense_15/ActivityRegularizer/Shape:output:09dense_15/ActivityRegularizer/strided_slice/stack:output:0;dense_15/ActivityRegularizer/strided_slice/stack_1:output:0;dense_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_15/ActivityRegularizer/CastCast3dense_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_15/ActivityRegularizer/truedivRealDiv5dense_15/ActivityRegularizer/PartitionedCall:output:0%dense_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_12/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_895558?
dropout_12/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_895565?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_16_896211dense_16_896213*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_895577?
,dense_16/ActivityRegularizer/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_16_activity_regularizer_895457{
"dense_16/ActivityRegularizer/ShapeShape)dense_16/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_16/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_16/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_16/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_16/ActivityRegularizer/strided_sliceStridedSlice+dense_16/ActivityRegularizer/Shape:output:09dense_16/ActivityRegularizer/strided_slice/stack:output:0;dense_16/ActivityRegularizer/strided_slice/stack_1:output:0;dense_16/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_16/ActivityRegularizer/CastCast3dense_16/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_16/ActivityRegularizer/truedivRealDiv5dense_16/ActivityRegularizer/PartitionedCall:output:0%dense_16/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_13/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_895596?
2leaky_re_lu_13/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_13_activity_regularizer_895470
(leaky_re_lu_13/ActivityRegularizer/ShapeShape'leaky_re_lu_13/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_13/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_13/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_13/ActivityRegularizer/Shape:output:0?leaky_re_lu_13/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_13/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_13/ActivityRegularizer/CastCast9leaky_re_lu_13/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_13/ActivityRegularizer/truedivRealDiv;leaky_re_lu_13/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_13/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dropout_13/PartitionedCallPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_895611?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0dense_17_896234dense_17_896236*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_895623?
,dense_17/ActivityRegularizer/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_17_activity_regularizer_895483{
"dense_17/ActivityRegularizer/ShapeShape)dense_17/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_17/ActivityRegularizer/strided_sliceStridedSlice+dense_17/ActivityRegularizer/Shape:output:09dense_17/ActivityRegularizer/strided_slice/stack:output:0;dense_17/ActivityRegularizer/strided_slice/stack_1:output:0;dense_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_17/ActivityRegularizer/CastCast3dense_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_17/ActivityRegularizer/truedivRealDiv5dense_17/ActivityRegularizer/PartitionedCall:output:0%dense_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_14/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_895642?
2leaky_re_lu_14/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_14_activity_regularizer_895496
(leaky_re_lu_14/ActivityRegularizer/ShapeShape'leaky_re_lu_14/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_14/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_14/ActivityRegularizer/Shape:output:0?leaky_re_lu_14/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_14/ActivityRegularizer/CastCast9leaky_re_lu_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_14/ActivityRegularizer/truedivRealDiv;leaky_re_lu_14/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dropout_14/PartitionedCallPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_895657?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_18_896257dense_18_896259*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_895669?
,dense_18/ActivityRegularizer/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *9
f4R2
0__inference_dense_18_activity_regularizer_895509{
"dense_18/ActivityRegularizer/ShapeShape)dense_18/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_18/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_18/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_18/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_18/ActivityRegularizer/strided_sliceStridedSlice+dense_18/ActivityRegularizer/Shape:output:09dense_18/ActivityRegularizer/strided_slice/stack:output:0;dense_18/ActivityRegularizer/strided_slice/stack_1:output:0;dense_18/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_18/ActivityRegularizer/CastCast3dense_18/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_18/ActivityRegularizer/truedivRealDiv5dense_18/ActivityRegularizer/PartitionedCall:output:0%dense_18/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
leaky_re_lu_15/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_895688?
2leaky_re_lu_15/ActivityRegularizer/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *?
f:R8
6__inference_leaky_re_lu_15_activity_regularizer_895522
(leaky_re_lu_15/ActivityRegularizer/ShapeShape'leaky_re_lu_15/PartitionedCall:output:0*
T0*
_output_shapes
:?
6leaky_re_lu_15/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8leaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0leaky_re_lu_15/ActivityRegularizer/strided_sliceStridedSlice1leaky_re_lu_15/ActivityRegularizer/Shape:output:0?leaky_re_lu_15/ActivityRegularizer/strided_slice/stack:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_1:output:0Aleaky_re_lu_15/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'leaky_re_lu_15/ActivityRegularizer/CastCast9leaky_re_lu_15/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
*leaky_re_lu_15/ActivityRegularizer/truedivRealDiv;leaky_re_lu_15/ActivityRegularizer/PartitionedCall:output:0+leaky_re_lu_15/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dropout_15/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_895703?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_19_896280dense_19_896282*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_895715x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_16/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_3Identity.leaky_re_lu_13/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(dense_17/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_5Identity.leaky_re_lu_14/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_6Identity(dense_18/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: n

Identity_7Identity.leaky_re_lu_15/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:P L
'
_output_shapes
:????????? 
!
_user_specified_name	input_4"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_40
serving_default_input_4:0????????? <
dense_190
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer_with_weights-4
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)_random_generator
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
?

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>_random_generator
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Akernel
Bbias
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S_random_generator
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
?
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
?
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h_random_generator
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kkernel
lbias
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
?
siter

tbeta_1

ubeta_2
	vdecay
wlearning_ratem?m?,m?-m?Am?Bm?Vm?Wm?km?lm?v?v?,v?-v?Av?Bv?Vv?Wv?kv?lv?"
	optimizer
f
0
1
,2
-3
A4
B5
V6
W7
k8
l9"
trackable_list_wrapper
f
0
1
,2
-3
A4
B5
V6
W7
k8
l9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_sequential_3_layer_call_fn_895759
-__inference_sequential_3_layer_call_fn_896431
-__inference_sequential_3_layer_call_fn_896463
-__inference_sequential_3_layer_call_fn_896193?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896596
H__inference_sequential_3_layer_call_and_return_conditional_losses_896757
H__inference_sequential_3_layer_call_and_return_conditional_losses_896293
H__inference_sequential_3_layer_call_and_return_conditional_losses_896393?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_895431input_4"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
}serving_default"
signature_map
": 	 ?2dense_15/kernel
:?2dense_15/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
?activity_regularizer_fn
*&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_15_layer_call_fn_896793?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dense_15_layer_call_and_return_all_conditional_losses_896804?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_leaky_re_lu_12_layer_call_fn_896809?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_896814?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
%	variables
&trainable_variables
'regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_12_layer_call_fn_896819
+__inference_dropout_12_layer_call_fn_896824?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_12_layer_call_and_return_conditional_losses_896829
F__inference_dropout_12_layer_call_and_return_conditional_losses_896841?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
#:!
??2dense_16/kernel
:?2dense_16/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
?activity_regularizer_fn
*3&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_16_layer_call_fn_896850?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dense_16_layer_call_and_return_all_conditional_losses_896861?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
?activity_regularizer_fn
*9&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_leaky_re_lu_13_layer_call_fn_896866?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_leaky_re_lu_13_layer_call_and_return_all_conditional_losses_896873?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_13_layer_call_fn_896878
+__inference_dropout_13_layer_call_fn_896883?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_13_layer_call_and_return_conditional_losses_896888
F__inference_dropout_13_layer_call_and_return_conditional_losses_896900?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
#:!
??2dense_17/kernel
:?2dense_17/bias
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
?activity_regularizer_fn
*H&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_17_layer_call_fn_896909?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dense_17_layer_call_and_return_all_conditional_losses_896920?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
?activity_regularizer_fn
*N&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_leaky_re_lu_14_layer_call_fn_896925?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_leaky_re_lu_14_layer_call_and_return_all_conditional_losses_896932?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_14_layer_call_fn_896937
+__inference_dropout_14_layer_call_fn_896942?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_14_layer_call_and_return_conditional_losses_896947
F__inference_dropout_14_layer_call_and_return_conditional_losses_896959?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
#:!
??2dense_18/kernel
:?2dense_18/bias
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
?activity_regularizer_fn
*]&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_18_layer_call_fn_896968?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dense_18_layer_call_and_return_all_conditional_losses_896979?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
?activity_regularizer_fn
*c&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_leaky_re_lu_15_layer_call_fn_896984?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_leaky_re_lu_15_layer_call_and_return_all_conditional_losses_896991?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_15_layer_call_fn_896996
+__inference_dropout_15_layer_call_fn_897001?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_15_layer_call_and_return_conditional_losses_897006
F__inference_dropout_15_layer_call_and_return_conditional_losses_897018?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
": 	?2dense_19/kernel
:2dense_19/bias
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_19_layer_call_fn_897027?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_19_layer_call_and_return_conditional_losses_897037?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_896784input_4"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
0__inference_dense_15_activity_regularizer_895444?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
D__inference_dense_15_layer_call_and_return_conditional_losses_897047?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
0__inference_dense_16_activity_regularizer_895457?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
D__inference_dense_16_layer_call_and_return_conditional_losses_897057?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
6__inference_leaky_re_lu_13_activity_regularizer_895470?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_897062?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
0__inference_dense_17_activity_regularizer_895483?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
D__inference_dense_17_layer_call_and_return_conditional_losses_897072?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
6__inference_leaky_re_lu_14_activity_regularizer_895496?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_897077?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
0__inference_dense_18_activity_regularizer_895509?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
D__inference_dense_18_layer_call_and_return_conditional_losses_897087?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
6__inference_leaky_re_lu_15_activity_regularizer_895522?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_897092?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
':%	 ?2Adam/dense_15/kernel/m
!:?2Adam/dense_15/bias/m
(:&
??2Adam/dense_16/kernel/m
!:?2Adam/dense_16/bias/m
(:&
??2Adam/dense_17/kernel/m
!:?2Adam/dense_17/bias/m
(:&
??2Adam/dense_18/kernel/m
!:?2Adam/dense_18/bias/m
':%	?2Adam/dense_19/kernel/m
 :2Adam/dense_19/bias/m
':%	 ?2Adam/dense_15/kernel/v
!:?2Adam/dense_15/bias/v
(:&
??2Adam/dense_16/kernel/v
!:?2Adam/dense_16/bias/v
(:&
??2Adam/dense_17/kernel/v
!:?2Adam/dense_17/bias/v
(:&
??2Adam/dense_18/kernel/v
!:?2Adam/dense_18/bias/v
':%	?2Adam/dense_19/kernel/v
 :2Adam/dense_19/bias/v?
!__inference__wrapped_model_895431s
,-ABVWkl0?-
&?#
!?
input_4????????? 
? "3?0
.
dense_19"?
dense_19?????????Z
0__inference_dense_15_activity_regularizer_895444&?
?
?	
x
? "? ?
H__inference_dense_15_layer_call_and_return_all_conditional_losses_896804k/?,
%?"
 ?
inputs????????? 
? "4?1
?
0??????????
?
?	
1/0 ?
D__inference_dense_15_layer_call_and_return_conditional_losses_897047]/?,
%?"
 ?
inputs????????? 
? "&?#
?
0??????????
? }
)__inference_dense_15_layer_call_fn_896793P/?,
%?"
 ?
inputs????????? 
? "???????????Z
0__inference_dense_16_activity_regularizer_895457&?
?
?	
x
? "? ?
H__inference_dense_16_layer_call_and_return_all_conditional_losses_896861l,-0?-
&?#
!?
inputs??????????
? "4?1
?
0??????????
?
?	
1/0 ?
D__inference_dense_16_layer_call_and_return_conditional_losses_897057^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_16_layer_call_fn_896850Q,-0?-
&?#
!?
inputs??????????
? "???????????Z
0__inference_dense_17_activity_regularizer_895483&?
?
?	
x
? "? ?
H__inference_dense_17_layer_call_and_return_all_conditional_losses_896920lAB0?-
&?#
!?
inputs??????????
? "4?1
?
0??????????
?
?	
1/0 ?
D__inference_dense_17_layer_call_and_return_conditional_losses_897072^AB0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_17_layer_call_fn_896909QAB0?-
&?#
!?
inputs??????????
? "???????????Z
0__inference_dense_18_activity_regularizer_895509&?
?
?	
x
? "? ?
H__inference_dense_18_layer_call_and_return_all_conditional_losses_896979lVW0?-
&?#
!?
inputs??????????
? "4?1
?
0??????????
?
?	
1/0 ?
D__inference_dense_18_layer_call_and_return_conditional_losses_897087^VW0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_18_layer_call_fn_896968QVW0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_19_layer_call_and_return_conditional_losses_897037]kl0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_dense_19_layer_call_fn_897027Pkl0?-
&?#
!?
inputs??????????
? "???????????
F__inference_dropout_12_layer_call_and_return_conditional_losses_896829^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_12_layer_call_and_return_conditional_losses_896841^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_12_layer_call_fn_896819Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_12_layer_call_fn_896824Q4?1
*?'
!?
inputs??????????
p
? "????????????
F__inference_dropout_13_layer_call_and_return_conditional_losses_896888^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_13_layer_call_and_return_conditional_losses_896900^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_13_layer_call_fn_896878Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_13_layer_call_fn_896883Q4?1
*?'
!?
inputs??????????
p
? "????????????
F__inference_dropout_14_layer_call_and_return_conditional_losses_896947^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_14_layer_call_and_return_conditional_losses_896959^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_14_layer_call_fn_896937Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_14_layer_call_fn_896942Q4?1
*?'
!?
inputs??????????
p
? "????????????
F__inference_dropout_15_layer_call_and_return_conditional_losses_897006^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_15_layer_call_and_return_conditional_losses_897018^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_15_layer_call_fn_896996Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_15_layer_call_fn_897001Q4?1
*?'
!?
inputs??????????
p
? "????????????
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_896814Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_leaky_re_lu_12_layer_call_fn_896809M0?-
&?#
!?
inputs??????????
? "???????????`
6__inference_leaky_re_lu_13_activity_regularizer_895470&?
?
?	
x
? "? ?
N__inference_leaky_re_lu_13_layer_call_and_return_all_conditional_losses_896873h0?-
&?#
!?
inputs??????????
? "4?1
?
0??????????
?
?	
1/0 ?
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_897062Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_leaky_re_lu_13_layer_call_fn_896866M0?-
&?#
!?
inputs??????????
? "???????????`
6__inference_leaky_re_lu_14_activity_regularizer_895496&?
?
?	
x
? "? ?
N__inference_leaky_re_lu_14_layer_call_and_return_all_conditional_losses_896932h0?-
&?#
!?
inputs??????????
? "4?1
?
0??????????
?
?	
1/0 ?
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_897077Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_leaky_re_lu_14_layer_call_fn_896925M0?-
&?#
!?
inputs??????????
? "???????????`
6__inference_leaky_re_lu_15_activity_regularizer_895522&?
?
?	
x
? "? ?
N__inference_leaky_re_lu_15_layer_call_and_return_all_conditional_losses_896991h0?-
&?#
!?
inputs??????????
? "4?1
?
0??????????
?
?	
1/0 ?
J__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_897092Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_leaky_re_lu_15_layer_call_fn_896984M0?-
&?#
!?
inputs??????????
? "????????????
H__inference_sequential_3_layer_call_and_return_conditional_losses_896293?
,-ABVWkl8?5
.?+
!?
input_4????????? 
p 

 
? "???
?
0?????????
e?b
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 
?	
1/5 
?	
1/6 ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896393?
,-ABVWkl8?5
.?+
!?
input_4????????? 
p

 
? "???
?
0?????????
e?b
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 
?	
1/5 
?	
1/6 ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896596?
,-ABVWkl7?4
-?*
 ?
inputs????????? 
p 

 
? "???
?
0?????????
e?b
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 
?	
1/5 
?	
1/6 ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_896757?
,-ABVWkl7?4
-?*
 ?
inputs????????? 
p

 
? "???
?
0?????????
e?b
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 
?	
1/5 
?	
1/6 ?
-__inference_sequential_3_layer_call_fn_895759`
,-ABVWkl8?5
.?+
!?
input_4????????? 
p 

 
? "???????????
-__inference_sequential_3_layer_call_fn_896193`
,-ABVWkl8?5
.?+
!?
input_4????????? 
p

 
? "???????????
-__inference_sequential_3_layer_call_fn_896431_
,-ABVWkl7?4
-?*
 ?
inputs????????? 
p 

 
? "???????????
-__inference_sequential_3_layer_call_fn_896463_
,-ABVWkl7?4
-?*
 ?
inputs????????? 
p

 
? "???????????
$__inference_signature_wrapper_896784~
,-ABVWkl;?8
? 
1?.
,
input_4!?
input_4????????? "3?0
.
dense_19"?
dense_19?????????