ни

юО
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Ф

conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
:
*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:
*
dtype0

conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
:
*
dtype0

conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
:
*
dtype0

conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
:
*
dtype0
|
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Кл
* 
shared_namedense_23/kernel
u
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel* 
_output_shapes
:
Кл
*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:
*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdam/conv2d_60/kernel/m

+Adam/conv2d_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/m*&
_output_shapes
:
*
dtype0

Adam/conv2d_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_60/bias/m
{
)Adam/conv2d_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_61/kernel/m

+Adam/conv2d_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/m*&
_output_shapes
:

*
dtype0

Adam/conv2d_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_61/bias/m
{
)Adam/conv2d_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_62/kernel/m

+Adam/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/m*&
_output_shapes
:

*
dtype0

Adam/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_62/bias/m
{
)Adam/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_63/kernel/m

+Adam/conv2d_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/m*&
_output_shapes
:

*
dtype0

Adam/conv2d_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_63/bias/m
{
)Adam/conv2d_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Кл
*'
shared_nameAdam/dense_23/kernel/m

*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m* 
_output_shapes
:
Кл
*
dtype0

Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdam/conv2d_60/kernel/v

+Adam/conv2d_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/v*&
_output_shapes
:
*
dtype0

Adam/conv2d_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_60/bias/v
{
)Adam/conv2d_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/v*
_output_shapes
:
*
dtype0

Adam/conv2d_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_61/kernel/v

+Adam/conv2d_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/v*&
_output_shapes
:

*
dtype0

Adam/conv2d_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_61/bias/v
{
)Adam/conv2d_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/v*
_output_shapes
:
*
dtype0

Adam/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_62/kernel/v

+Adam/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/v*&
_output_shapes
:

*
dtype0

Adam/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_62/bias/v
{
)Adam/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/v*
_output_shapes
:
*
dtype0

Adam/conv2d_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_63/kernel/v

+Adam/conv2d_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/v*&
_output_shapes
:

*
dtype0

Adam/conv2d_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_63/bias/v
{
)Adam/conv2d_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Кл
*'
shared_nameAdam/dense_23/kernel/v

*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v* 
_output_shapes
:
Кл
*
dtype0

Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
Ќ@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ч?
valueн?Bк? Bг?
ш
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
 	variables
!regularization_losses
"trainable_variables
#	keras_api
h

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
h

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
R
0	variables
1regularization_losses
2trainable_variables
3	keras_api
R
4	variables
5regularization_losses
6trainable_variables
7	keras_api
h

8kernel
9bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api

>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemmmm$m%m*m+m8m9mvvvv$v%v*v+v8v9v
F
0
1
2
3
$4
%5
*6
+7
88
99
 
F
0
1
2
3
$4
%5
*6
+7
88
99
­
Clayer_regularization_losses
Dnon_trainable_variables
	variables

Elayers
Fmetrics
Glayer_metrics
regularization_losses
trainable_variables
 
\Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
Hlayer_regularization_losses
Inon_trainable_variables
	variables

Jlayers
Kmetrics
Llayer_metrics
regularization_losses
trainable_variables
 
 
 
­
Mlayer_regularization_losses
Nnon_trainable_variables
	variables

Olayers
Pmetrics
Qlayer_metrics
regularization_losses
trainable_variables
\Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
Rlayer_regularization_losses
Snon_trainable_variables
	variables

Tlayers
Umetrics
Vlayer_metrics
regularization_losses
trainable_variables
 
 
 
­
Wlayer_regularization_losses
Xnon_trainable_variables
 	variables

Ylayers
Zmetrics
[layer_metrics
!regularization_losses
"trainable_variables
\Z
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
­
\layer_regularization_losses
]non_trainable_variables
&	variables

^layers
_metrics
`layer_metrics
'regularization_losses
(trainable_variables
\Z
VARIABLE_VALUEconv2d_63/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_63/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
­
alayer_regularization_losses
bnon_trainable_variables
,	variables

clayers
dmetrics
elayer_metrics
-regularization_losses
.trainable_variables
 
 
 
­
flayer_regularization_losses
gnon_trainable_variables
0	variables

hlayers
imetrics
jlayer_metrics
1regularization_losses
2trainable_variables
 
 
 
­
klayer_regularization_losses
lnon_trainable_variables
4	variables

mlayers
nmetrics
olayer_metrics
5regularization_losses
6trainable_variables
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91
 

80
91
­
player_regularization_losses
qnon_trainable_variables
:	variables

rlayers
smetrics
tlayer_metrics
;regularization_losses
<trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
?
0
1
2
3
4
5
6
7
	8

u0
v1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	wtotal
	xcount
y	variables
z	keras_api
D
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

w0
x1

y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

{0
|1

~	variables
}
VARIABLE_VALUEAdam/conv2d_60/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_60/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_61/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_61/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_62/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_63/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_63/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_60/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_60/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_61/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_61/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_62/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_63/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_63/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv2d_60_inputPlaceholder*1
_output_shapes
:џџџџџџџџџрр*
dtype0*&
shape:џџџџџџџџџрр
ѕ
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_60_inputconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasdense_23/kerneldense_23/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_41202
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ж
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_60/kernel/m/Read/ReadVariableOp)Adam/conv2d_60/bias/m/Read/ReadVariableOp+Adam/conv2d_61/kernel/m/Read/ReadVariableOp)Adam/conv2d_61/bias/m/Read/ReadVariableOp+Adam/conv2d_62/kernel/m/Read/ReadVariableOp)Adam/conv2d_62/bias/m/Read/ReadVariableOp+Adam/conv2d_63/kernel/m/Read/ReadVariableOp)Adam/conv2d_63/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp+Adam/conv2d_60/kernel/v/Read/ReadVariableOp)Adam/conv2d_60/bias/v/Read/ReadVariableOp+Adam/conv2d_61/kernel/v/Read/ReadVariableOp)Adam/conv2d_61/bias/v/Read/ReadVariableOp+Adam/conv2d_62/kernel/v/Read/ReadVariableOp)Adam/conv2d_62/bias/v/Read/ReadVariableOp+Adam/conv2d_63/kernel/v/Read/ReadVariableOp)Adam/conv2d_63/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_41601
Ѕ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasdense_23/kerneldense_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_60/kernel/mAdam/conv2d_60/bias/mAdam/conv2d_61/kernel/mAdam/conv2d_61/bias/mAdam/conv2d_62/kernel/mAdam/conv2d_62/bias/mAdam/conv2d_63/kernel/mAdam/conv2d_63/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/conv2d_60/kernel/vAdam/conv2d_60/bias/vAdam/conv2d_61/kernel/vAdam/conv2d_61/bias/vAdam/conv2d_62/kernel/vAdam/conv2d_62/bias/vAdam/conv2d_63/kernel/vAdam/conv2d_63/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_41728дф
ІЈ

!__inference__traced_restore_41728
file_prefix;
!assignvariableop_conv2d_60_kernel:
/
!assignvariableop_1_conv2d_60_bias:
=
#assignvariableop_2_conv2d_61_kernel:

/
!assignvariableop_3_conv2d_61_bias:
=
#assignvariableop_4_conv2d_62_kernel:

/
!assignvariableop_5_conv2d_62_bias:
=
#assignvariableop_6_conv2d_63_kernel:

/
!assignvariableop_7_conv2d_63_bias:
6
"assignvariableop_8_dense_23_kernel:
Кл
.
 assignvariableop_9_dense_23_bias:
'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: E
+assignvariableop_19_adam_conv2d_60_kernel_m:
7
)assignvariableop_20_adam_conv2d_60_bias_m:
E
+assignvariableop_21_adam_conv2d_61_kernel_m:

7
)assignvariableop_22_adam_conv2d_61_bias_m:
E
+assignvariableop_23_adam_conv2d_62_kernel_m:

7
)assignvariableop_24_adam_conv2d_62_bias_m:
E
+assignvariableop_25_adam_conv2d_63_kernel_m:

7
)assignvariableop_26_adam_conv2d_63_bias_m:
>
*assignvariableop_27_adam_dense_23_kernel_m:
Кл
6
(assignvariableop_28_adam_dense_23_bias_m:
E
+assignvariableop_29_adam_conv2d_60_kernel_v:
7
)assignvariableop_30_adam_conv2d_60_bias_v:
E
+assignvariableop_31_adam_conv2d_61_kernel_v:

7
)assignvariableop_32_adam_conv2d_61_bias_v:
E
+assignvariableop_33_adam_conv2d_62_kernel_v:

7
)assignvariableop_34_adam_conv2d_62_bias_v:
E
+assignvariableop_35_adam_conv2d_63_kernel_v:

7
)assignvariableop_36_adam_conv2d_63_bias_v:
>
*assignvariableop_37_adam_dense_23_kernel_v:
Кл
6
(assignvariableop_38_adam_dense_23_bias_v:

identity_40ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesо
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesі
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ж
_output_shapesЃ
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_60_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ј
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_61_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_61_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ј
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_62_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5І
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_62_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ј
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_63_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7І
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_63_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ї
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_23_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѕ
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_23_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10Ѕ
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ї
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13І
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ў
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ё
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ё
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ѓ
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ѓ
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Г
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_60_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Б
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_60_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Г
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_61_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Б
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_61_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Г
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_62_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Б
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_62_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Г
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_63_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Б
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_63_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27В
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_23_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28А
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_23_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Г
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_60_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Б
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_60_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Г
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_61_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Б
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_61_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Г
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_62_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Б
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_62_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Г
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_63_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Б
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_63_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37В
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_23_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38А
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_23_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpИ
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39Ћ
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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

c
G__inference_activation_8_layer_call_and_return_conditional_losses_40829

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:џџџџџџџџџоо
2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџоо
:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_40782

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_62_layer_call_and_return_conditional_losses_40860

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџll
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџnn
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџnn

 
_user_specified_nameinputs
Ф


-__inference_sequential_18_layer_call_fn_40933
conv2d_60_input!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
Кл

	unknown_8:

identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_409102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџрр
)
_user_specified_nameconv2d_60_input
Ћ
g
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_40794

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
щ
a
E__inference_flatten_19_layer_call_and_return_conditional_losses_41441

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџКm  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:џџџџџџџџџКл2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:џџџџџџџџџКл2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ55
:W S
/
_output_shapes
:џџџџџџџџџ55

 
_user_specified_nameinputs
Е;
Ї
H__inference_sequential_18_layer_call_and_return_conditional_losses_41296

inputsB
(conv2d_60_conv2d_readvariableop_resource:
7
)conv2d_60_biasadd_readvariableop_resource:
B
(conv2d_61_conv2d_readvariableop_resource:

7
)conv2d_61_biasadd_readvariableop_resource:
B
(conv2d_62_conv2d_readvariableop_resource:

7
)conv2d_62_biasadd_readvariableop_resource:
B
(conv2d_63_conv2d_readvariableop_resource:

7
)conv2d_63_biasadd_readvariableop_resource:
;
'dense_23_matmul_readvariableop_resource:
Кл
6
(dense_23_biasadd_readvariableop_resource:

identityЂ conv2d_60/BiasAdd/ReadVariableOpЂconv2d_60/Conv2D/ReadVariableOpЂ conv2d_61/BiasAdd/ReadVariableOpЂconv2d_61/Conv2D/ReadVariableOpЂ conv2d_62/BiasAdd/ReadVariableOpЂconv2d_62/Conv2D/ReadVariableOpЂ conv2d_63/BiasAdd/ReadVariableOpЂconv2d_63/Conv2D/ReadVariableOpЂdense_23/BiasAdd/ReadVariableOpЂdense_23/MatMul/ReadVariableOpГ
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02!
conv2d_60/Conv2D/ReadVariableOpФ
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2
conv2d_60/Conv2DЊ
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOpВ
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
conv2d_60/BiasAdd
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
conv2d_60/Relu
activation_8/ReluReluconv2d_60/Relu:activations:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
activation_8/ReluГ
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_61/Conv2D/ReadVariableOpн
conv2d_61/Conv2DConv2Dactivation_8/Relu:activations:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2
conv2d_61/Conv2DЊ
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_61/BiasAdd/ReadVariableOpВ
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
conv2d_61/BiasAdd
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
conv2d_61/ReluЪ
max_pooling2d_33/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:џџџџџџџџџnn
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_33/MaxPoolГ
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_62/Conv2D/ReadVariableOpн
conv2d_62/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2
conv2d_62/Conv2DЊ
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOpА
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
conv2d_62/ReluГ
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_63/Conv2D/ReadVariableOpи
conv2d_63/Conv2DConv2Dconv2d_62/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2
conv2d_63/Conv2DЊ
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOpА
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
conv2d_63/BiasAdd~
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
conv2d_63/ReluЪ
max_pooling2d_34/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ55
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_34/MaxPoolu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџКm  2
flatten_19/ConstЅ
flatten_19/ReshapeReshape!max_pooling2d_34/MaxPool:output:0flatten_19/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџКл2
flatten_19/ReshapeЊ
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
Кл
*
dtype02 
dense_23/MatMul/ReadVariableOpЃ
dense_23/MatMulMatMulflatten_19/Reshape:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_23/MatMulЇ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_23/BiasAdd/ReadVariableOpЅ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_23/SoftmaxХ
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
Ё
§
D__inference_conv2d_61_layer_call_and_return_conditional_losses_41390

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
ReluЁ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџоо
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs
ю)

H__inference_sequential_18_layer_call_and_return_conditional_losses_41055

inputs)
conv2d_60_41025:

conv2d_60_41027:
)
conv2d_61_41031:


conv2d_61_41033:
)
conv2d_62_41037:


conv2d_62_41039:
)
conv2d_63_41042:


conv2d_63_41044:
"
dense_23_41049:
Кл

dense_23_41051:

identityЂ!conv2d_60/StatefulPartitionedCallЂ!conv2d_61/StatefulPartitionedCallЂ!conv2d_62/StatefulPartitionedCallЂ!conv2d_63/StatefulPartitionedCallЂ dense_23/StatefulPartitionedCall 
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_41025conv2d_60_41027*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_408182#
!conv2d_60/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_8_layer_call_and_return_conditional_losses_408292
activation_8/PartitionedCallП
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall%activation_8/PartitionedCall:output:0conv2d_61_41031conv2d_61_41033*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_408422#
!conv2d_61/StatefulPartitionedCall
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџnn
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_407822"
 max_pooling2d_33/PartitionedCallС
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_62_41037conv2d_62_41039*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_408602#
!conv2d_62/StatefulPartitionedCallТ
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_41042conv2d_63_41044*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_408772#
!conv2d_63/StatefulPartitionedCall
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ55
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_407942"
 max_pooling2d_34/PartitionedCallў
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџКл* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_408902
flatten_19/PartitionedCallЎ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_23_41049dense_23_41051*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_409032"
 dense_23/StatefulPartitionedCallА
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
щ
a
E__inference_flatten_19_layer_call_and_return_conditional_losses_40890

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџКm  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:џџџџџџџџџКл2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:џџџџџџџџџКл2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ55
:W S
/
_output_shapes
:џџџџџџџџџ55

 
_user_specified_nameinputs
Љ


-__inference_sequential_18_layer_call_fn_41227

inputs!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
Кл

	unknown_8:

identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_409102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
рK
 

 __inference__wrapped_model_40776
conv2d_60_inputP
6sequential_18_conv2d_60_conv2d_readvariableop_resource:
E
7sequential_18_conv2d_60_biasadd_readvariableop_resource:
P
6sequential_18_conv2d_61_conv2d_readvariableop_resource:

E
7sequential_18_conv2d_61_biasadd_readvariableop_resource:
P
6sequential_18_conv2d_62_conv2d_readvariableop_resource:

E
7sequential_18_conv2d_62_biasadd_readvariableop_resource:
P
6sequential_18_conv2d_63_conv2d_readvariableop_resource:

E
7sequential_18_conv2d_63_biasadd_readvariableop_resource:
I
5sequential_18_dense_23_matmul_readvariableop_resource:
Кл
D
6sequential_18_dense_23_biasadd_readvariableop_resource:

identityЂ.sequential_18/conv2d_60/BiasAdd/ReadVariableOpЂ-sequential_18/conv2d_60/Conv2D/ReadVariableOpЂ.sequential_18/conv2d_61/BiasAdd/ReadVariableOpЂ-sequential_18/conv2d_61/Conv2D/ReadVariableOpЂ.sequential_18/conv2d_62/BiasAdd/ReadVariableOpЂ-sequential_18/conv2d_62/Conv2D/ReadVariableOpЂ.sequential_18/conv2d_63/BiasAdd/ReadVariableOpЂ-sequential_18/conv2d_63/Conv2D/ReadVariableOpЂ-sequential_18/dense_23/BiasAdd/ReadVariableOpЂ,sequential_18/dense_23/MatMul/ReadVariableOpн
-sequential_18/conv2d_60/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02/
-sequential_18/conv2d_60/Conv2D/ReadVariableOpї
sequential_18/conv2d_60/Conv2DConv2Dconv2d_60_input5sequential_18/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2 
sequential_18/conv2d_60/Conv2Dд
.sequential_18/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_18/conv2d_60/BiasAdd/ReadVariableOpъ
sequential_18/conv2d_60/BiasAddBiasAdd'sequential_18/conv2d_60/Conv2D:output:06sequential_18/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2!
sequential_18/conv2d_60/BiasAddЊ
sequential_18/conv2d_60/ReluRelu(sequential_18/conv2d_60/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
sequential_18/conv2d_60/ReluВ
sequential_18/activation_8/ReluRelu*sequential_18/conv2d_60/Relu:activations:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2!
sequential_18/activation_8/Reluн
-sequential_18/conv2d_61/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02/
-sequential_18/conv2d_61/Conv2D/ReadVariableOp
sequential_18/conv2d_61/Conv2DConv2D-sequential_18/activation_8/Relu:activations:05sequential_18/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2 
sequential_18/conv2d_61/Conv2Dд
.sequential_18/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_18/conv2d_61/BiasAdd/ReadVariableOpъ
sequential_18/conv2d_61/BiasAddBiasAdd'sequential_18/conv2d_61/Conv2D:output:06sequential_18/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2!
sequential_18/conv2d_61/BiasAddЊ
sequential_18/conv2d_61/ReluRelu(sequential_18/conv2d_61/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
sequential_18/conv2d_61/Reluє
&sequential_18/max_pooling2d_33/MaxPoolMaxPool*sequential_18/conv2d_61/Relu:activations:0*/
_output_shapes
:џџџџџџџџџnn
*
ksize
*
paddingVALID*
strides
2(
&sequential_18/max_pooling2d_33/MaxPoolн
-sequential_18/conv2d_62/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02/
-sequential_18/conv2d_62/Conv2D/ReadVariableOp
sequential_18/conv2d_62/Conv2DConv2D/sequential_18/max_pooling2d_33/MaxPool:output:05sequential_18/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2 
sequential_18/conv2d_62/Conv2Dд
.sequential_18/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_18/conv2d_62/BiasAdd/ReadVariableOpш
sequential_18/conv2d_62/BiasAddBiasAdd'sequential_18/conv2d_62/Conv2D:output:06sequential_18/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2!
sequential_18/conv2d_62/BiasAddЈ
sequential_18/conv2d_62/ReluRelu(sequential_18/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
sequential_18/conv2d_62/Reluн
-sequential_18/conv2d_63/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02/
-sequential_18/conv2d_63/Conv2D/ReadVariableOp
sequential_18/conv2d_63/Conv2DConv2D*sequential_18/conv2d_62/Relu:activations:05sequential_18/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2 
sequential_18/conv2d_63/Conv2Dд
.sequential_18/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_18/conv2d_63/BiasAdd/ReadVariableOpш
sequential_18/conv2d_63/BiasAddBiasAdd'sequential_18/conv2d_63/Conv2D:output:06sequential_18/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2!
sequential_18/conv2d_63/BiasAddЈ
sequential_18/conv2d_63/ReluRelu(sequential_18/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
sequential_18/conv2d_63/Reluє
&sequential_18/max_pooling2d_34/MaxPoolMaxPool*sequential_18/conv2d_63/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ55
*
ksize
*
paddingVALID*
strides
2(
&sequential_18/max_pooling2d_34/MaxPool
sequential_18/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџКm  2 
sequential_18/flatten_19/Constн
 sequential_18/flatten_19/ReshapeReshape/sequential_18/max_pooling2d_34/MaxPool:output:0'sequential_18/flatten_19/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџКл2"
 sequential_18/flatten_19/Reshapeд
,sequential_18/dense_23/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_23_matmul_readvariableop_resource* 
_output_shapes
:
Кл
*
dtype02.
,sequential_18/dense_23/MatMul/ReadVariableOpл
sequential_18/dense_23/MatMulMatMul)sequential_18/flatten_19/Reshape:output:04sequential_18/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_18/dense_23/MatMulб
-sequential_18/dense_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_23_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-sequential_18/dense_23/BiasAdd/ReadVariableOpн
sequential_18/dense_23/BiasAddBiasAdd'sequential_18/dense_23/MatMul:product:05sequential_18/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2 
sequential_18/dense_23/BiasAddІ
sequential_18/dense_23/SoftmaxSoftmax'sequential_18/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2 
sequential_18/dense_23/Softmaxп
IdentityIdentity(sequential_18/dense_23/Softmax:softmax:0/^sequential_18/conv2d_60/BiasAdd/ReadVariableOp.^sequential_18/conv2d_60/Conv2D/ReadVariableOp/^sequential_18/conv2d_61/BiasAdd/ReadVariableOp.^sequential_18/conv2d_61/Conv2D/ReadVariableOp/^sequential_18/conv2d_62/BiasAdd/ReadVariableOp.^sequential_18/conv2d_62/Conv2D/ReadVariableOp/^sequential_18/conv2d_63/BiasAdd/ReadVariableOp.^sequential_18/conv2d_63/Conv2D/ReadVariableOp.^sequential_18/dense_23/BiasAdd/ReadVariableOp-^sequential_18/dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 2`
.sequential_18/conv2d_60/BiasAdd/ReadVariableOp.sequential_18/conv2d_60/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_60/Conv2D/ReadVariableOp-sequential_18/conv2d_60/Conv2D/ReadVariableOp2`
.sequential_18/conv2d_61/BiasAdd/ReadVariableOp.sequential_18/conv2d_61/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_61/Conv2D/ReadVariableOp-sequential_18/conv2d_61/Conv2D/ReadVariableOp2`
.sequential_18/conv2d_62/BiasAdd/ReadVariableOp.sequential_18/conv2d_62/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_62/Conv2D/ReadVariableOp-sequential_18/conv2d_62/Conv2D/ReadVariableOp2`
.sequential_18/conv2d_63/BiasAdd/ReadVariableOp.sequential_18/conv2d_63/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_63/Conv2D/ReadVariableOp-sequential_18/conv2d_63/Conv2D/ReadVariableOp2^
-sequential_18/dense_23/BiasAdd/ReadVariableOp-sequential_18/dense_23/BiasAdd/ReadVariableOp2\
,sequential_18/dense_23/MatMul/ReadVariableOp,sequential_18/dense_23/MatMul/ReadVariableOp:b ^
1
_output_shapes
:џџџџџџџџџрр
)
_user_specified_nameconv2d_60_input
ъ
H
,__inference_activation_8_layer_call_fn_41365

inputs
identityЯ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_8_layer_call_and_return_conditional_losses_408292
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџоо
:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs
з
L
0__inference_max_pooling2d_33_layer_call_fn_40788

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_407822
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

)__inference_conv2d_61_layer_call_fn_41379

inputs!
unknown:


	unknown_0:

identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_408422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџоо
: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs
ыS

__inference__traced_save_41601
file_prefix/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_60_kernel_m_read_readvariableop4
0savev2_adam_conv2d_60_bias_m_read_readvariableop6
2savev2_adam_conv2d_61_kernel_m_read_readvariableop4
0savev2_adam_conv2d_61_bias_m_read_readvariableop6
2savev2_adam_conv2d_62_kernel_m_read_readvariableop4
0savev2_adam_conv2d_62_bias_m_read_readvariableop6
2savev2_adam_conv2d_63_kernel_m_read_readvariableop4
0savev2_adam_conv2d_63_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop6
2savev2_adam_conv2d_60_kernel_v_read_readvariableop4
0savev2_adam_conv2d_60_bias_v_read_readvariableop6
2savev2_adam_conv2d_61_kernel_v_read_readvariableop4
0savev2_adam_conv2d_61_bias_v_read_readvariableop6
2savev2_adam_conv2d_62_kernel_v_read_readvariableop4
0savev2_adam_conv2d_62_bias_v_read_readvariableop6
2savev2_adam_conv2d_63_kernel_v_read_readvariableop4
0savev2_adam_conv2d_63_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesи
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesч
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_60_kernel_m_read_readvariableop0savev2_adam_conv2d_60_bias_m_read_readvariableop2savev2_adam_conv2d_61_kernel_m_read_readvariableop0savev2_adam_conv2d_61_bias_m_read_readvariableop2savev2_adam_conv2d_62_kernel_m_read_readvariableop0savev2_adam_conv2d_62_bias_m_read_readvariableop2savev2_adam_conv2d_63_kernel_m_read_readvariableop0savev2_adam_conv2d_63_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop2savev2_adam_conv2d_60_kernel_v_read_readvariableop0savev2_adam_conv2d_60_bias_v_read_readvariableop2savev2_adam_conv2d_61_kernel_v_read_readvariableop0savev2_adam_conv2d_61_bias_v_read_readvariableop2savev2_adam_conv2d_62_kernel_v_read_readvariableop0savev2_adam_conv2d_62_bias_v_read_readvariableop2savev2_adam_conv2d_63_kernel_v_read_readvariableop0savev2_adam_conv2d_63_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapesя
ь: :
:
:

:
:

:
:

:
:
Кл
:
: : : : : : : : : :
:
:

:
:

:
:

:
:
Кл
:
:
:
:

:
:

:
:

:
:
Кл
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:
: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:&	"
 
_output_shapes
:
Кл
: 


_output_shapes
:
:
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:
: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:&"
 
_output_shapes
:
Кл
: 

_output_shapes
:
:,(
&
_output_shapes
:
: 

_output_shapes
:
:, (
&
_output_shapes
:

: !

_output_shapes
:
:,"(
&
_output_shapes
:

: #

_output_shapes
:
:,$(
&
_output_shapes
:

: %

_output_shapes
:
:&&"
 
_output_shapes
:
Кл
: '

_output_shapes
:
:(

_output_shapes
: 
У

)__inference_conv2d_63_layer_call_fn_41419

inputs!
unknown:


	unknown_0:

identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_408772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџll
: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџll

 
_user_specified_nameinputs
в
F
*__inference_flatten_19_layer_call_fn_41435

inputs
identityХ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџКл* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_408902
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:џџџџџџџџџКл2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ55
:W S
/
_output_shapes
:џџџџџџџџџ55

 
_user_specified_nameinputs
Љ


-__inference_sequential_18_layer_call_fn_41252

inputs!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
Кл

	unknown_8:

identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_410552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
*

H__inference_sequential_18_layer_call_and_return_conditional_losses_41169
conv2d_60_input)
conv2d_60_41139:

conv2d_60_41141:
)
conv2d_61_41145:


conv2d_61_41147:
)
conv2d_62_41151:


conv2d_62_41153:
)
conv2d_63_41156:


conv2d_63_41158:
"
dense_23_41163:
Кл

dense_23_41165:

identityЂ!conv2d_60/StatefulPartitionedCallЂ!conv2d_61/StatefulPartitionedCallЂ!conv2d_62/StatefulPartitionedCallЂ!conv2d_63/StatefulPartitionedCallЂ dense_23/StatefulPartitionedCallЉ
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_41139conv2d_60_41141*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_408182#
!conv2d_60/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_8_layer_call_and_return_conditional_losses_408292
activation_8/PartitionedCallП
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall%activation_8/PartitionedCall:output:0conv2d_61_41145conv2d_61_41147*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_408422#
!conv2d_61/StatefulPartitionedCall
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџnn
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_407822"
 max_pooling2d_33/PartitionedCallС
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_62_41151conv2d_62_41153*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_408602#
!conv2d_62/StatefulPartitionedCallТ
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_41156conv2d_63_41158*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_408772#
!conv2d_63/StatefulPartitionedCall
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ55
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_407942"
 max_pooling2d_34/PartitionedCallў
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџКл* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_408902
flatten_19/PartitionedCallЎ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_23_41163dense_23_41165*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_409032"
 dense_23/StatefulPartitionedCallА
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџрр
)
_user_specified_nameconv2d_60_input
Ф


-__inference_sequential_18_layer_call_fn_41103
conv2d_60_input!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
Кл

	unknown_8:

identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_410552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџрр
)
_user_specified_nameconv2d_60_input
Ё
§
D__inference_conv2d_60_layer_call_and_return_conditional_losses_41360

inputs8
conv2d_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
ReluЁ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџрр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
з
L
0__inference_max_pooling2d_34_layer_call_fn_40800

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_407942
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
У

)__inference_conv2d_62_layer_call_fn_41399

inputs!
unknown:


	unknown_0:

identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_408602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџll
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџnn
: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџnn

 
_user_specified_nameinputs
Ы

)__inference_conv2d_60_layer_call_fn_41349

inputs!
unknown:

	unknown_0:

identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_408182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџрр: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
Е;
Ї
H__inference_sequential_18_layer_call_and_return_conditional_losses_41340

inputsB
(conv2d_60_conv2d_readvariableop_resource:
7
)conv2d_60_biasadd_readvariableop_resource:
B
(conv2d_61_conv2d_readvariableop_resource:

7
)conv2d_61_biasadd_readvariableop_resource:
B
(conv2d_62_conv2d_readvariableop_resource:

7
)conv2d_62_biasadd_readvariableop_resource:
B
(conv2d_63_conv2d_readvariableop_resource:

7
)conv2d_63_biasadd_readvariableop_resource:
;
'dense_23_matmul_readvariableop_resource:
Кл
6
(dense_23_biasadd_readvariableop_resource:

identityЂ conv2d_60/BiasAdd/ReadVariableOpЂconv2d_60/Conv2D/ReadVariableOpЂ conv2d_61/BiasAdd/ReadVariableOpЂconv2d_61/Conv2D/ReadVariableOpЂ conv2d_62/BiasAdd/ReadVariableOpЂconv2d_62/Conv2D/ReadVariableOpЂ conv2d_63/BiasAdd/ReadVariableOpЂconv2d_63/Conv2D/ReadVariableOpЂdense_23/BiasAdd/ReadVariableOpЂdense_23/MatMul/ReadVariableOpГ
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02!
conv2d_60/Conv2D/ReadVariableOpФ
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2
conv2d_60/Conv2DЊ
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOpВ
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
conv2d_60/BiasAdd
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
conv2d_60/Relu
activation_8/ReluReluconv2d_60/Relu:activations:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
activation_8/ReluГ
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_61/Conv2D/ReadVariableOpн
conv2d_61/Conv2DConv2Dactivation_8/Relu:activations:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2
conv2d_61/Conv2DЊ
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_61/BiasAdd/ReadVariableOpВ
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
conv2d_61/BiasAdd
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
conv2d_61/ReluЪ
max_pooling2d_33/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:џџџџџџџџџnn
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_33/MaxPoolГ
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_62/Conv2D/ReadVariableOpн
conv2d_62/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2
conv2d_62/Conv2DЊ
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOpА
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
conv2d_62/ReluГ
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_63/Conv2D/ReadVariableOpи
conv2d_63/Conv2DConv2Dconv2d_62/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2
conv2d_63/Conv2DЊ
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOpА
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
conv2d_63/BiasAdd~
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
conv2d_63/ReluЪ
max_pooling2d_34/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ55
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_34/MaxPoolu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџКm  2
flatten_19/ConstЅ
flatten_19/ReshapeReshape!max_pooling2d_34/MaxPool:output:0flatten_19/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџКл2
flatten_19/ReshapeЊ
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
Кл
*
dtype02 
dense_23/MatMul/ReadVariableOpЃ
dense_23/MatMulMatMulflatten_19/Reshape:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_23/MatMulЇ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_23/BiasAdd/ReadVariableOpЅ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_23/SoftmaxХ
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
Ё
§
D__inference_conv2d_60_layer_call_and_return_conditional_losses_40818

inputs8
conv2d_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
ReluЁ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџрр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs


(__inference_dense_23_layer_call_fn_41450

inputs
unknown:
Кл

	unknown_0:

identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_409032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:џџџџџџџџџКл: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:џџџџџџџџџКл
 
_user_specified_nameinputs
Л

і
C__inference_dense_23_layer_call_and_return_conditional_losses_41461

inputs2
matmul_readvariableop_resource:
Кл
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Кл
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:џџџџџџџџџКл: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:џџџџџџџџџКл
 
_user_specified_nameinputs

c
G__inference_activation_8_layer_call_and_return_conditional_losses_41370

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:џџџџџџџџџоо
2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџоо
:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs
ю)

H__inference_sequential_18_layer_call_and_return_conditional_losses_40910

inputs)
conv2d_60_40819:

conv2d_60_40821:
)
conv2d_61_40843:


conv2d_61_40845:
)
conv2d_62_40861:


conv2d_62_40863:
)
conv2d_63_40878:


conv2d_63_40880:
"
dense_23_40904:
Кл

dense_23_40906:

identityЂ!conv2d_60/StatefulPartitionedCallЂ!conv2d_61/StatefulPartitionedCallЂ!conv2d_62/StatefulPartitionedCallЂ!conv2d_63/StatefulPartitionedCallЂ dense_23/StatefulPartitionedCall 
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_40819conv2d_60_40821*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_408182#
!conv2d_60/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_8_layer_call_and_return_conditional_losses_408292
activation_8/PartitionedCallП
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall%activation_8/PartitionedCall:output:0conv2d_61_40843conv2d_61_40845*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_408422#
!conv2d_61/StatefulPartitionedCall
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџnn
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_407822"
 max_pooling2d_33/PartitionedCallС
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_62_40861conv2d_62_40863*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_408602#
!conv2d_62/StatefulPartitionedCallТ
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_40878conv2d_63_40880*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_408772#
!conv2d_63/StatefulPartitionedCall
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ55
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_407942"
 max_pooling2d_34/PartitionedCallў
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџКл* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_408902
flatten_19/PartitionedCallЎ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_23_40904dense_23_40906*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_409032"
 dense_23/StatefulPartitionedCallА
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs



#__inference_signature_wrapper_41202
conv2d_60_input!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
Кл

	unknown_8:

identityЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_407762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџрр
)
_user_specified_nameconv2d_60_input
Ё
§
D__inference_conv2d_61_layer_call_and_return_conditional_losses_40842

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
ReluЁ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџоо
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs

§
D__inference_conv2d_62_layer_call_and_return_conditional_losses_41410

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџll
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџnn
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџnn

 
_user_specified_nameinputs

§
D__inference_conv2d_63_layer_call_and_return_conditional_losses_41430

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџll
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџll

 
_user_specified_nameinputs
*

H__inference_sequential_18_layer_call_and_return_conditional_losses_41136
conv2d_60_input)
conv2d_60_41106:

conv2d_60_41108:
)
conv2d_61_41112:


conv2d_61_41114:
)
conv2d_62_41118:


conv2d_62_41120:
)
conv2d_63_41123:


conv2d_63_41125:
"
dense_23_41130:
Кл

dense_23_41132:

identityЂ!conv2d_60/StatefulPartitionedCallЂ!conv2d_61/StatefulPartitionedCallЂ!conv2d_62/StatefulPartitionedCallЂ!conv2d_63/StatefulPartitionedCallЂ dense_23/StatefulPartitionedCallЉ
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_41106conv2d_60_41108*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_408182#
!conv2d_60/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_8_layer_call_and_return_conditional_losses_408292
activation_8/PartitionedCallП
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall%activation_8/PartitionedCall:output:0conv2d_61_41112conv2d_61_41114*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_408422#
!conv2d_61/StatefulPartitionedCall
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџnn
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_407822"
 max_pooling2d_33/PartitionedCallС
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_62_41118conv2d_62_41120*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_408602#
!conv2d_62/StatefulPartitionedCallТ
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_41123conv2d_63_41125*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_408772#
!conv2d_63/StatefulPartitionedCall
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ55
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_407942"
 max_pooling2d_34/PartitionedCallў
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџКл* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_408902
flatten_19/PartitionedCallЎ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_23_41130dense_23_41132*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_409032"
 dense_23/StatefulPartitionedCallА
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџрр: : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџрр
)
_user_specified_nameconv2d_60_input

§
D__inference_conv2d_63_layer_call_and_return_conditional_losses_40877

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџll
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџll

 
_user_specified_nameinputs
Л

і
C__inference_dense_23_layer_call_and_return_conditional_losses_40903

inputs2
matmul_readvariableop_resource:
Кл
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Кл
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:џџџџџџџџџКл: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:џџџџџџџџџКл
 
_user_specified_nameinputs"ЬL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Х
serving_defaultБ
U
conv2d_60_inputB
!serving_default_conv2d_60_input:0џџџџџџџџџрр<
dense_230
StatefulPartitionedCall:0џџџџџџџџџ
tensorflow/serving/predict:ЉЕ
T
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
_default_save_signature
__call__
+&call_and_return_all_conditional_losses"ТP
_tf_keras_sequentialЃP{"name": "sequential_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_18", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_60_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 224, 224, 3]}, "float32", "conv2d_60_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_18", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_60_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 15}, {"class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 22}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
й

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"В

_tf_keras_layer
{"name": "conv2d_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}}
ю
	variables
regularization_losses
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"н
_tf_keras_layerУ{"name": "activation_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}
ж


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"Џ	
_tf_keras_layer	{"name": "conv2d_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 10}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 222, 222, 10]}}
В
 	variables
!regularization_losses
"trainable_variables
#	keras_api
__call__
+&call_and_return_all_conditional_losses"Ё
_tf_keras_layer{"name": "max_pooling2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 24}}
и


$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
__call__
+ &call_and_return_all_conditional_losses"Б	
_tf_keras_layer	{"name": "conv2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 10}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 110, 110, 10]}}
й


*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
Ё__call__
+Ђ&call_and_return_all_conditional_losses"В	
_tf_keras_layer	{"name": "conv2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 10}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 108, 108, 10]}}
Г
0	variables
1regularization_losses
2trainable_variables
3	keras_api
Ѓ__call__
+Є&call_and_return_all_conditional_losses"Ђ
_tf_keras_layer{"name": "max_pooling2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 27}}

4	variables
5regularization_losses
6trainable_variables
7	keras_api
Ѕ__call__
+І&call_and_return_all_conditional_losses"
_tf_keras_layerя{"name": "flatten_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 28}}
н

8kernel
9bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
Ї__call__
+Ј&call_and_return_all_conditional_losses"Ж
_tf_keras_layer{"name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 28090}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28090]}}

>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemmmm$m%m*m+m8m9mvvvv$v%v*v+v8v9v"
	optimizer
f
0
1
2
3
$4
%5
*6
+7
88
99"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
$4
%5
*6
+7
88
99"
trackable_list_wrapper
Ю
Clayer_regularization_losses
Dnon_trainable_variables
	variables

Elayers
Fmetrics
Glayer_metrics
regularization_losses
trainable_variables
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
Љserving_default"
signature_map
*:(
2conv2d_60/kernel
:
2conv2d_60/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
Hlayer_regularization_losses
Inon_trainable_variables
	variables

Jlayers
Kmetrics
Llayer_metrics
regularization_losses
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Mlayer_regularization_losses
Nnon_trainable_variables
	variables

Olayers
Pmetrics
Qlayer_metrics
regularization_losses
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(

2conv2d_61/kernel
:
2conv2d_61/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
Rlayer_regularization_losses
Snon_trainable_variables
	variables

Tlayers
Umetrics
Vlayer_metrics
regularization_losses
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Wlayer_regularization_losses
Xnon_trainable_variables
 	variables

Ylayers
Zmetrics
[layer_metrics
!regularization_losses
"trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(

2conv2d_62/kernel
:
2conv2d_62/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
А
\layer_regularization_losses
]non_trainable_variables
&	variables

^layers
_metrics
`layer_metrics
'regularization_losses
(trainable_variables
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
*:(

2conv2d_63/kernel
:
2conv2d_63/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
А
alayer_regularization_losses
bnon_trainable_variables
,	variables

clayers
dmetrics
elayer_metrics
-regularization_losses
.trainable_variables
Ё__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
flayer_regularization_losses
gnon_trainable_variables
0	variables

hlayers
imetrics
jlayer_metrics
1regularization_losses
2trainable_variables
Ѓ__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
klayer_regularization_losses
lnon_trainable_variables
4	variables

mlayers
nmetrics
olayer_metrics
5regularization_losses
6trainable_variables
Ѕ__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
#:!
Кл
2dense_23/kernel
:
2dense_23/bias
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
А
player_regularization_losses
qnon_trainable_variables
:	variables

rlayers
smetrics
tlayer_metrics
;regularization_losses
<trainable_variables
Ї__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
.
u0
v1"
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
д
	wtotal
	xcount
y	variables
z	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 30}

	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"а
_tf_keras_metricЕ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 22}
:  (2total
:  (2count
.
w0
x1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
{0
|1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
/:-
2Adam/conv2d_60/kernel/m
!:
2Adam/conv2d_60/bias/m
/:-

2Adam/conv2d_61/kernel/m
!:
2Adam/conv2d_61/bias/m
/:-

2Adam/conv2d_62/kernel/m
!:
2Adam/conv2d_62/bias/m
/:-

2Adam/conv2d_63/kernel/m
!:
2Adam/conv2d_63/bias/m
(:&
Кл
2Adam/dense_23/kernel/m
 :
2Adam/dense_23/bias/m
/:-
2Adam/conv2d_60/kernel/v
!:
2Adam/conv2d_60/bias/v
/:-

2Adam/conv2d_61/kernel/v
!:
2Adam/conv2d_61/bias/v
/:-

2Adam/conv2d_62/kernel/v
!:
2Adam/conv2d_62/bias/v
/:-

2Adam/conv2d_63/kernel/v
!:
2Adam/conv2d_63/bias/v
(:&
Кл
2Adam/dense_23/kernel/v
 :
2Adam/dense_23/bias/v
№2э
 __inference__wrapped_model_40776Ш
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *8Ђ5
30
conv2d_60_inputџџџџџџџџџрр
2џ
-__inference_sequential_18_layer_call_fn_40933
-__inference_sequential_18_layer_call_fn_41227
-__inference_sequential_18_layer_call_fn_41252
-__inference_sequential_18_layer_call_fn_41103Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
H__inference_sequential_18_layer_call_and_return_conditional_losses_41296
H__inference_sequential_18_layer_call_and_return_conditional_losses_41340
H__inference_sequential_18_layer_call_and_return_conditional_losses_41136
H__inference_sequential_18_layer_call_and_return_conditional_losses_41169Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_conv2d_60_layer_call_fn_41349Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_60_layer_call_and_return_conditional_losses_41360Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_activation_8_layer_call_fn_41365Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_activation_8_layer_call_and_return_conditional_losses_41370Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_61_layer_call_fn_41379Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_61_layer_call_and_return_conditional_losses_41390Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_33_layer_call_fn_40788р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Г2А
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_40782р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
г2а
)__inference_conv2d_62_layer_call_fn_41399Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_62_layer_call_and_return_conditional_losses_41410Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_63_layer_call_fn_41419Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_63_layer_call_and_return_conditional_losses_41430Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_34_layer_call_fn_40800р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Г2А
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_40794р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
д2б
*__inference_flatten_19_layer_call_fn_41435Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_flatten_19_layer_call_and_return_conditional_losses_41441Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_23_layer_call_fn_41450Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_23_layer_call_and_return_conditional_losses_41461Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
вBЯ
#__inference_signature_wrapper_41202conv2d_60_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Њ
 __inference__wrapped_model_40776
$%*+89BЂ?
8Ђ5
30
conv2d_60_inputџџџџџџџџџрр
Њ "3Њ0
.
dense_23"
dense_23џџџџџџџџџ
З
G__inference_activation_8_layer_call_and_return_conditional_losses_41370l9Ђ6
/Ђ,
*'
inputsџџџџџџџџџоо

Њ "/Ђ,
%"
0џџџџџџџџџоо

 
,__inference_activation_8_layer_call_fn_41365_9Ђ6
/Ђ,
*'
inputsџџџџџџџџџоо

Њ ""џџџџџџџџџоо
И
D__inference_conv2d_60_layer_call_and_return_conditional_losses_41360p9Ђ6
/Ђ,
*'
inputsџџџџџџџџџрр
Њ "/Ђ,
%"
0џџџџџџџџџоо

 
)__inference_conv2d_60_layer_call_fn_41349c9Ђ6
/Ђ,
*'
inputsџџџџџџџџџрр
Њ ""џџџџџџџџџоо
И
D__inference_conv2d_61_layer_call_and_return_conditional_losses_41390p9Ђ6
/Ђ,
*'
inputsџџџџџџџџџоо

Њ "/Ђ,
%"
0џџџџџџџџџмм

 
)__inference_conv2d_61_layer_call_fn_41379c9Ђ6
/Ђ,
*'
inputsџџџџџџџџџоо

Њ ""џџџџџџџџџмм
Д
D__inference_conv2d_62_layer_call_and_return_conditional_losses_41410l$%7Ђ4
-Ђ*
(%
inputsџџџџџџџџџnn

Њ "-Ђ*
# 
0џџџџџџџџџll

 
)__inference_conv2d_62_layer_call_fn_41399_$%7Ђ4
-Ђ*
(%
inputsџџџџџџџџџnn

Њ " џџџџџџџџџll
Д
D__inference_conv2d_63_layer_call_and_return_conditional_losses_41430l*+7Ђ4
-Ђ*
(%
inputsџџџџџџџџџll

Њ "-Ђ*
# 
0џџџџџџџџџjj

 
)__inference_conv2d_63_layer_call_fn_41419_*+7Ђ4
-Ђ*
(%
inputsџџџџџџџџџll

Њ " џџџџџџџџџjj
Ѕ
C__inference_dense_23_layer_call_and_return_conditional_losses_41461^891Ђ.
'Ђ$
"
inputsџџџџџџџџџКл
Њ "%Ђ"

0џџџџџџџџџ

 }
(__inference_dense_23_layer_call_fn_41450Q891Ђ.
'Ђ$
"
inputsџџџџџџџџџКл
Њ "џџџџџџџџџ
Ћ
E__inference_flatten_19_layer_call_and_return_conditional_losses_41441b7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ55

Њ "'Ђ$

0џџџџџџџџџКл
 
*__inference_flatten_19_layer_call_fn_41435U7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ55

Њ "џџџџџџџџџКлю
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_40782RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_max_pooling2d_33_layer_call_fn_40788RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_40794RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_max_pooling2d_34_layer_call_fn_40800RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЫ
H__inference_sequential_18_layer_call_and_return_conditional_losses_41136
$%*+89JЂG
@Ђ=
30
conv2d_60_inputџџџџџџџџџрр
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Ы
H__inference_sequential_18_layer_call_and_return_conditional_losses_41169
$%*+89JЂG
@Ђ=
30
conv2d_60_inputџџџџџџџџџрр
p

 
Њ "%Ђ"

0џџџџџџџџџ

 Т
H__inference_sequential_18_layer_call_and_return_conditional_losses_41296v
$%*+89AЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Т
H__inference_sequential_18_layer_call_and_return_conditional_losses_41340v
$%*+89AЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p

 
Њ "%Ђ"

0џџџџџџџџџ

 Ѓ
-__inference_sequential_18_layer_call_fn_40933r
$%*+89JЂG
@Ђ=
30
conv2d_60_inputџџџџџџџџџрр
p 

 
Њ "џџџџџџџџџ
Ѓ
-__inference_sequential_18_layer_call_fn_41103r
$%*+89JЂG
@Ђ=
30
conv2d_60_inputџџџџџџџџџрр
p

 
Њ "џџџџџџџџџ

-__inference_sequential_18_layer_call_fn_41227i
$%*+89AЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p 

 
Њ "џџџџџџџџџ

-__inference_sequential_18_layer_call_fn_41252i
$%*+89AЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p

 
Њ "џџџџџџџџџ
Р
#__inference_signature_wrapper_41202
$%*+89UЂR
Ђ 
KЊH
F
conv2d_60_input30
conv2d_60_inputџџџџџџџџџрр"3Њ0
.
dense_23"
dense_23џџџџџџџџџ
