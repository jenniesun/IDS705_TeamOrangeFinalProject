■е

ш╜
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
╝
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
Ы
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
╛
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
executor_typestring И
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8Цё
В
1st_conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_name1st_conv/kernel
{
#1st_conv/kernel/Read/ReadVariableOpReadVariableOp1st_conv/kernel*&
_output_shapes
:*
dtype0
r
1st_conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name1st_conv/bias
k
!1st_conv/bias/Read/ReadVariableOpReadVariableOp1st_conv/bias*
_output_shapes
:*
dtype0
В
2nd_conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_name2nd_conv/kernel
{
#2nd_conv/kernel/Read/ReadVariableOpReadVariableOp2nd_conv/kernel*&
_output_shapes
:*
dtype0
r
2nd_conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name2nd_conv/bias
k
!2nd_conv/bias/Read/ReadVariableOpReadVariableOp2nd_conv/bias*
_output_shapes
:*
dtype0
w
1st_fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аx*
shared_name1st_fc/kernel
p
!1st_fc/kernel/Read/ReadVariableOpReadVariableOp1st_fc/kernel*
_output_shapes
:	Аx*
dtype0
n
1st_fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_name1st_fc/bias
g
1st_fc/bias/Read/ReadVariableOpReadVariableOp1st_fc/bias*
_output_shapes
:x*
dtype0
v
2nd_fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*
shared_name2nd_fc/kernel
o
!2nd_fc/kernel/Read/ReadVariableOpReadVariableOp2nd_fc/kernel*
_output_shapes

:xT*
dtype0
n
2nd_fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_name2nd_fc/bias
g
2nd_fc/bias/Read/ReadVariableOpReadVariableOp2nd_fc/bias*
_output_shapes
:T*
dtype0
v
3rd_fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T/*
shared_name3rd_fc/kernel
o
!3rd_fc/kernel/Read/ReadVariableOpReadVariableOp3rd_fc/kernel*
_output_shapes

:T/*
dtype0
n
3rd_fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:/*
shared_name3rd_fc/bias
g
3rd_fc/bias/Read/ReadVariableOpReadVariableOp3rd_fc/bias*
_output_shapes
:/*
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
Р
Adam/1st_conv/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/1st_conv/kernel/m
Й
*Adam/1st_conv/kernel/m/Read/ReadVariableOpReadVariableOpAdam/1st_conv/kernel/m*&
_output_shapes
:*
dtype0
А
Adam/1st_conv/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/1st_conv/bias/m
y
(Adam/1st_conv/bias/m/Read/ReadVariableOpReadVariableOpAdam/1st_conv/bias/m*
_output_shapes
:*
dtype0
Р
Adam/2nd_conv/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/2nd_conv/kernel/m
Й
*Adam/2nd_conv/kernel/m/Read/ReadVariableOpReadVariableOpAdam/2nd_conv/kernel/m*&
_output_shapes
:*
dtype0
А
Adam/2nd_conv/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/2nd_conv/bias/m
y
(Adam/2nd_conv/bias/m/Read/ReadVariableOpReadVariableOpAdam/2nd_conv/bias/m*
_output_shapes
:*
dtype0
Е
Adam/1st_fc/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аx*%
shared_nameAdam/1st_fc/kernel/m
~
(Adam/1st_fc/kernel/m/Read/ReadVariableOpReadVariableOpAdam/1st_fc/kernel/m*
_output_shapes
:	Аx*
dtype0
|
Adam/1st_fc/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*#
shared_nameAdam/1st_fc/bias/m
u
&Adam/1st_fc/bias/m/Read/ReadVariableOpReadVariableOpAdam/1st_fc/bias/m*
_output_shapes
:x*
dtype0
Д
Adam/2nd_fc/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*%
shared_nameAdam/2nd_fc/kernel/m
}
(Adam/2nd_fc/kernel/m/Read/ReadVariableOpReadVariableOpAdam/2nd_fc/kernel/m*
_output_shapes

:xT*
dtype0
|
Adam/2nd_fc/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*#
shared_nameAdam/2nd_fc/bias/m
u
&Adam/2nd_fc/bias/m/Read/ReadVariableOpReadVariableOpAdam/2nd_fc/bias/m*
_output_shapes
:T*
dtype0
Д
Adam/3rd_fc/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T/*%
shared_nameAdam/3rd_fc/kernel/m
}
(Adam/3rd_fc/kernel/m/Read/ReadVariableOpReadVariableOpAdam/3rd_fc/kernel/m*
_output_shapes

:T/*
dtype0
|
Adam/3rd_fc/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:/*#
shared_nameAdam/3rd_fc/bias/m
u
&Adam/3rd_fc/bias/m/Read/ReadVariableOpReadVariableOpAdam/3rd_fc/bias/m*
_output_shapes
:/*
dtype0
Р
Adam/1st_conv/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/1st_conv/kernel/v
Й
*Adam/1st_conv/kernel/v/Read/ReadVariableOpReadVariableOpAdam/1st_conv/kernel/v*&
_output_shapes
:*
dtype0
А
Adam/1st_conv/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/1st_conv/bias/v
y
(Adam/1st_conv/bias/v/Read/ReadVariableOpReadVariableOpAdam/1st_conv/bias/v*
_output_shapes
:*
dtype0
Р
Adam/2nd_conv/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/2nd_conv/kernel/v
Й
*Adam/2nd_conv/kernel/v/Read/ReadVariableOpReadVariableOpAdam/2nd_conv/kernel/v*&
_output_shapes
:*
dtype0
А
Adam/2nd_conv/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/2nd_conv/bias/v
y
(Adam/2nd_conv/bias/v/Read/ReadVariableOpReadVariableOpAdam/2nd_conv/bias/v*
_output_shapes
:*
dtype0
Е
Adam/1st_fc/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аx*%
shared_nameAdam/1st_fc/kernel/v
~
(Adam/1st_fc/kernel/v/Read/ReadVariableOpReadVariableOpAdam/1st_fc/kernel/v*
_output_shapes
:	Аx*
dtype0
|
Adam/1st_fc/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*#
shared_nameAdam/1st_fc/bias/v
u
&Adam/1st_fc/bias/v/Read/ReadVariableOpReadVariableOpAdam/1st_fc/bias/v*
_output_shapes
:x*
dtype0
Д
Adam/2nd_fc/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*%
shared_nameAdam/2nd_fc/kernel/v
}
(Adam/2nd_fc/kernel/v/Read/ReadVariableOpReadVariableOpAdam/2nd_fc/kernel/v*
_output_shapes

:xT*
dtype0
|
Adam/2nd_fc/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*#
shared_nameAdam/2nd_fc/bias/v
u
&Adam/2nd_fc/bias/v/Read/ReadVariableOpReadVariableOpAdam/2nd_fc/bias/v*
_output_shapes
:T*
dtype0
Д
Adam/3rd_fc/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T/*%
shared_nameAdam/3rd_fc/kernel/v
}
(Adam/3rd_fc/kernel/v/Read/ReadVariableOpReadVariableOpAdam/3rd_fc/kernel/v*
_output_shapes

:T/*
dtype0
|
Adam/3rd_fc/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:/*#
shared_nameAdam/3rd_fc/bias/v
u
&Adam/3rd_fc/bias/v/Read/ReadVariableOpReadVariableOpAdam/3rd_fc/bias/v*
_output_shapes
:/*
dtype0

NoOpNoOp
Ё?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*л?
valueб?BЮ? BЧ?
ш
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
 trainable_variables
!regularization_losses
"	variables
#	keras_api
R
$trainable_variables
%regularization_losses
&	variables
'	keras_api
R
(trainable_variables
)regularization_losses
*	variables
+	keras_api
h

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
h

2kernel
3bias
4trainable_variables
5regularization_losses
6	variables
7	keras_api
h

8kernel
9bias
:trainable_variables
;regularization_losses
<	variables
=	keras_api
И
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemАmБmВmГ,mД-mЕ2mЖ3mЗ8mИ9mЙvКvЛvМvН,vО-vП2vР3vС8vТ9vУ
F
0
1
2
3
,4
-5
26
37
88
99
 
F
0
1
2
3
,4
-5
26
37
88
99
н
trainable_variables
regularization_losses
Cnon_trainable_variables
Dlayer_metrics
Emetrics

Flayers
Glayer_regularization_losses
	variables
 
[Y
VARIABLE_VALUE1st_conv/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUE1st_conv/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
trainable_variables
regularization_losses
Hnon_trainable_variables
Ilayer_metrics
Jmetrics

Klayers
Llayer_regularization_losses
	variables
 
 
 
н
trainable_variables
regularization_losses
Mnon_trainable_variables
Nlayer_metrics
Ometrics

Players
Qlayer_regularization_losses
	variables
[Y
VARIABLE_VALUE2nd_conv/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUE2nd_conv/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
trainable_variables
regularization_losses
Rnon_trainable_variables
Slayer_metrics
Tmetrics

Ulayers
Vlayer_regularization_losses
	variables
 
 
 
н
 trainable_variables
!regularization_losses
Wnon_trainable_variables
Xlayer_metrics
Ymetrics

Zlayers
[layer_regularization_losses
"	variables
 
 
 
н
$trainable_variables
%regularization_losses
\non_trainable_variables
]layer_metrics
^metrics

_layers
`layer_regularization_losses
&	variables
 
 
 
н
(trainable_variables
)regularization_losses
anon_trainable_variables
blayer_metrics
cmetrics

dlayers
elayer_regularization_losses
*	variables
YW
VARIABLE_VALUE1st_fc/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE1st_fc/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
 

,0
-1
н
.trainable_variables
/regularization_losses
fnon_trainable_variables
glayer_metrics
hmetrics

ilayers
jlayer_regularization_losses
0	variables
YW
VARIABLE_VALUE2nd_fc/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE2nd_fc/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
н
4trainable_variables
5regularization_losses
knon_trainable_variables
llayer_metrics
mmetrics

nlayers
olayer_regularization_losses
6	variables
YW
VARIABLE_VALUE3rd_fc/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE3rd_fc/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91
 

80
91
н
:trainable_variables
;regularization_losses
pnon_trainable_variables
qlayer_metrics
rmetrics

slayers
tlayer_regularization_losses
<	variables
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

u0
v1
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
~|
VARIABLE_VALUEAdam/1st_conv/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/1st_conv/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/2nd_conv/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/2nd_conv/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/1st_fc/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/1st_fc/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/2nd_fc/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/2nd_fc/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/3rd_fc/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/3rd_fc/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/1st_conv/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/1st_conv/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/2nd_conv/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/2nd_conv/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/1st_fc/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/1st_fc/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/2nd_fc/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/2nd_fc/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/3rd_fc/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/3rd_fc/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
С
serving_default_1st_conv_inputPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
с
StatefulPartitionedCallStatefulPartitionedCallserving_default_1st_conv_input1st_conv/kernel1st_conv/bias2nd_conv/kernel2nd_conv/bias1st_fc/kernel1st_fc/bias2nd_fc/kernel2nd_fc/bias3rd_fc/kernel3rd_fc/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_397112
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
√
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#1st_conv/kernel/Read/ReadVariableOp!1st_conv/bias/Read/ReadVariableOp#2nd_conv/kernel/Read/ReadVariableOp!2nd_conv/bias/Read/ReadVariableOp!1st_fc/kernel/Read/ReadVariableOp1st_fc/bias/Read/ReadVariableOp!2nd_fc/kernel/Read/ReadVariableOp2nd_fc/bias/Read/ReadVariableOp!3rd_fc/kernel/Read/ReadVariableOp3rd_fc/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/1st_conv/kernel/m/Read/ReadVariableOp(Adam/1st_conv/bias/m/Read/ReadVariableOp*Adam/2nd_conv/kernel/m/Read/ReadVariableOp(Adam/2nd_conv/bias/m/Read/ReadVariableOp(Adam/1st_fc/kernel/m/Read/ReadVariableOp&Adam/1st_fc/bias/m/Read/ReadVariableOp(Adam/2nd_fc/kernel/m/Read/ReadVariableOp&Adam/2nd_fc/bias/m/Read/ReadVariableOp(Adam/3rd_fc/kernel/m/Read/ReadVariableOp&Adam/3rd_fc/bias/m/Read/ReadVariableOp*Adam/1st_conv/kernel/v/Read/ReadVariableOp(Adam/1st_conv/bias/v/Read/ReadVariableOp*Adam/2nd_conv/kernel/v/Read/ReadVariableOp(Adam/2nd_conv/bias/v/Read/ReadVariableOp(Adam/1st_fc/kernel/v/Read/ReadVariableOp&Adam/1st_fc/bias/v/Read/ReadVariableOp(Adam/2nd_fc/kernel/v/Read/ReadVariableOp&Adam/2nd_fc/bias/v/Read/ReadVariableOp(Adam/3rd_fc/kernel/v/Read/ReadVariableOp&Adam/3rd_fc/bias/v/Read/ReadVariableOpConst*4
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
GPU 2J 8В *(
f#R!
__inference__traced_save_397532
ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename1st_conv/kernel1st_conv/bias2nd_conv/kernel2nd_conv/bias1st_fc/kernel1st_fc/bias2nd_fc/kernel2nd_fc/bias3rd_fc/kernel3rd_fc/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/1st_conv/kernel/mAdam/1st_conv/bias/mAdam/2nd_conv/kernel/mAdam/2nd_conv/bias/mAdam/1st_fc/kernel/mAdam/1st_fc/bias/mAdam/2nd_fc/kernel/mAdam/2nd_fc/bias/mAdam/3rd_fc/kernel/mAdam/3rd_fc/bias/mAdam/1st_conv/kernel/vAdam/1st_conv/bias/vAdam/2nd_conv/kernel/vAdam/2nd_conv/bias/vAdam/1st_fc/kernel/vAdam/1st_fc/bias/vAdam/2nd_fc/kernel/vAdam/2nd_fc/bias/vAdam/3rd_fc/kernel/vAdam/3rd_fc/bias/v*3
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_397659╒╠
╧

▌
D__inference_1st_conv_layer_call_and_return_conditional_losses_397266

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
┴(
ў
F__inference_sequential_layer_call_and_return_conditional_losses_396927
st_conv_input
st_conv_396768
st_conv_396770
nd_conv_396796
nd_conv_396798
st_fc_396868
st_fc_396870
nd_fc_396895
nd_fc_396897
rd_fc_396921
rd_fc_396923
identityИв 1st_conv/StatefulPartitionedCallв#1st_dropout/StatefulPartitionedCallв1st_fc/StatefulPartitionedCallв 2nd_conv/StatefulPartitionedCallв2nd_fc/StatefulPartitionedCallв3rd_fc/StatefulPartitionedCallб
 1st_conv/StatefulPartitionedCallStatefulPartitionedCallst_conv_inputst_conv_396768st_conv_396770*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_1st_conv_layer_call_and_return_conditional_losses_3967572"
 1st_conv/StatefulPartitionedCallИ
1st_pooling/PartitionedCallPartitionedCall)1st_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_pooling_layer_call_and_return_conditional_losses_3967242
1st_pooling/PartitionedCall╕
 2nd_conv/StatefulPartitionedCallStatefulPartitionedCall$1st_pooling/PartitionedCall:output:0nd_conv_396796nd_conv_396798*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_2nd_conv_layer_call_and_return_conditional_losses_3967852"
 2nd_conv/StatefulPartitionedCallИ
2nd_pooling/PartitionedCallPartitionedCall)2nd_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_2nd_pooling_layer_call_and_return_conditional_losses_3967362
2nd_pooling/PartitionedCallЁ
flatten/PartitionedCallPartitionedCall$2nd_pooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3968082
flatten/PartitionedCallР
#1st_dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_dropout_layer_call_and_return_conditional_losses_3968282%
#1st_dropout/StatefulPartitionedCallо
1st_fc/StatefulPartitionedCallStatefulPartitionedCall,1st_dropout/StatefulPartitionedCall:output:0st_fc_396868st_fc_396870*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_1st_fc_layer_call_and_return_conditional_losses_3968572 
1st_fc/StatefulPartitionedCallй
2nd_fc/StatefulPartitionedCallStatefulPartitionedCall'1st_fc/StatefulPartitionedCall:output:0nd_fc_396895nd_fc_396897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_2nd_fc_layer_call_and_return_conditional_losses_3968842 
2nd_fc/StatefulPartitionedCallй
3rd_fc/StatefulPartitionedCallStatefulPartitionedCall'2nd_fc/StatefulPartitionedCall:output:0rd_fc_396921rd_fc_396923*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_3rd_fc_layer_call_and_return_conditional_losses_3969102 
3rd_fc/StatefulPartitionedCall╩
IdentityIdentity'3rd_fc/StatefulPartitionedCall:output:0!^1st_conv/StatefulPartitionedCall$^1st_dropout/StatefulPartitionedCall^1st_fc/StatefulPartitionedCall!^2nd_conv/StatefulPartitionedCall^2nd_fc/StatefulPartitionedCall^3rd_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::2D
 1st_conv/StatefulPartitionedCall 1st_conv/StatefulPartitionedCall2J
#1st_dropout/StatefulPartitionedCall#1st_dropout/StatefulPartitionedCall2@
1st_fc/StatefulPartitionedCall1st_fc/StatefulPartitionedCall2D
 2nd_conv/StatefulPartitionedCall 2nd_conv/StatefulPartitionedCall2@
2nd_fc/StatefulPartitionedCall2nd_fc/StatefulPartitionedCall2@
3rd_fc/StatefulPartitionedCall3rd_fc/StatefulPartitionedCall:_ [
/
_output_shapes
:         
(
_user_specified_name1st_conv_input
е
H
,__inference_1st_pooling_layer_call_fn_396730

inputs
identityш
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_pooling_layer_call_and_return_conditional_losses_3967242
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
М
f
G__inference_1st_dropout_layer_call_and_return_conditional_losses_397318

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Й'
╤
F__inference_sequential_layer_call_and_return_conditional_losses_396960
st_conv_input
st_conv_396930
st_conv_396932
nd_conv_396936
nd_conv_396938
st_fc_396944
st_fc_396946
nd_fc_396949
nd_fc_396951
rd_fc_396954
rd_fc_396956
identityИв 1st_conv/StatefulPartitionedCallв1st_fc/StatefulPartitionedCallв 2nd_conv/StatefulPartitionedCallв2nd_fc/StatefulPartitionedCallв3rd_fc/StatefulPartitionedCallб
 1st_conv/StatefulPartitionedCallStatefulPartitionedCallst_conv_inputst_conv_396930st_conv_396932*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_1st_conv_layer_call_and_return_conditional_losses_3967572"
 1st_conv/StatefulPartitionedCallИ
1st_pooling/PartitionedCallPartitionedCall)1st_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_pooling_layer_call_and_return_conditional_losses_3967242
1st_pooling/PartitionedCall╕
 2nd_conv/StatefulPartitionedCallStatefulPartitionedCall$1st_pooling/PartitionedCall:output:0nd_conv_396936nd_conv_396938*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_2nd_conv_layer_call_and_return_conditional_losses_3967852"
 2nd_conv/StatefulPartitionedCallИ
2nd_pooling/PartitionedCallPartitionedCall)2nd_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_2nd_pooling_layer_call_and_return_conditional_losses_3967362
2nd_pooling/PartitionedCallЁ
flatten/PartitionedCallPartitionedCall$2nd_pooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3968082
flatten/PartitionedCall°
1st_dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_dropout_layer_call_and_return_conditional_losses_3968332
1st_dropout/PartitionedCallж
1st_fc/StatefulPartitionedCallStatefulPartitionedCall$1st_dropout/PartitionedCall:output:0st_fc_396944st_fc_396946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_1st_fc_layer_call_and_return_conditional_losses_3968572 
1st_fc/StatefulPartitionedCallй
2nd_fc/StatefulPartitionedCallStatefulPartitionedCall'1st_fc/StatefulPartitionedCall:output:0nd_fc_396949nd_fc_396951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_2nd_fc_layer_call_and_return_conditional_losses_3968842 
2nd_fc/StatefulPartitionedCallй
3rd_fc/StatefulPartitionedCallStatefulPartitionedCall'2nd_fc/StatefulPartitionedCall:output:0rd_fc_396954rd_fc_396956*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_3rd_fc_layer_call_and_return_conditional_losses_3969102 
3rd_fc/StatefulPartitionedCallд
IdentityIdentity'3rd_fc/StatefulPartitionedCall:output:0!^1st_conv/StatefulPartitionedCall^1st_fc/StatefulPartitionedCall!^2nd_conv/StatefulPartitionedCall^2nd_fc/StatefulPartitionedCall^3rd_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::2D
 1st_conv/StatefulPartitionedCall 1st_conv/StatefulPartitionedCall2@
1st_fc/StatefulPartitionedCall1st_fc/StatefulPartitionedCall2D
 2nd_conv/StatefulPartitionedCall 2nd_conv/StatefulPartitionedCall2@
2nd_fc/StatefulPartitionedCall2nd_fc/StatefulPartitionedCall2@
3rd_fc/StatefulPartitionedCall3rd_fc/StatefulPartitionedCall:_ [
/
_output_shapes
:         
(
_user_specified_name1st_conv_input
є&
╩
F__inference_sequential_layer_call_and_return_conditional_losses_397054

inputs
st_conv_397024
st_conv_397026
nd_conv_397030
nd_conv_397032
st_fc_397038
st_fc_397040
nd_fc_397043
nd_fc_397045
rd_fc_397048
rd_fc_397050
identityИв 1st_conv/StatefulPartitionedCallв1st_fc/StatefulPartitionedCallв 2nd_conv/StatefulPartitionedCallв2nd_fc/StatefulPartitionedCallв3rd_fc/StatefulPartitionedCallЪ
 1st_conv/StatefulPartitionedCallStatefulPartitionedCallinputsst_conv_397024st_conv_397026*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_1st_conv_layer_call_and_return_conditional_losses_3967572"
 1st_conv/StatefulPartitionedCallИ
1st_pooling/PartitionedCallPartitionedCall)1st_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_pooling_layer_call_and_return_conditional_losses_3967242
1st_pooling/PartitionedCall╕
 2nd_conv/StatefulPartitionedCallStatefulPartitionedCall$1st_pooling/PartitionedCall:output:0nd_conv_397030nd_conv_397032*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_2nd_conv_layer_call_and_return_conditional_losses_3967852"
 2nd_conv/StatefulPartitionedCallИ
2nd_pooling/PartitionedCallPartitionedCall)2nd_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_2nd_pooling_layer_call_and_return_conditional_losses_3967362
2nd_pooling/PartitionedCallЁ
flatten/PartitionedCallPartitionedCall$2nd_pooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3968082
flatten/PartitionedCall°
1st_dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_dropout_layer_call_and_return_conditional_losses_3968332
1st_dropout/PartitionedCallж
1st_fc/StatefulPartitionedCallStatefulPartitionedCall$1st_dropout/PartitionedCall:output:0st_fc_397038st_fc_397040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_1st_fc_layer_call_and_return_conditional_losses_3968572 
1st_fc/StatefulPartitionedCallй
2nd_fc/StatefulPartitionedCallStatefulPartitionedCall'1st_fc/StatefulPartitionedCall:output:0nd_fc_397043nd_fc_397045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_2nd_fc_layer_call_and_return_conditional_losses_3968842 
2nd_fc/StatefulPartitionedCallй
3rd_fc/StatefulPartitionedCallStatefulPartitionedCall'2nd_fc/StatefulPartitionedCall:output:0rd_fc_397048rd_fc_397050*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_3rd_fc_layer_call_and_return_conditional_losses_3969102 
3rd_fc/StatefulPartitionedCallд
IdentityIdentity'3rd_fc/StatefulPartitionedCall:output:0!^1st_conv/StatefulPartitionedCall^1st_fc/StatefulPartitionedCall!^2nd_conv/StatefulPartitionedCall^2nd_fc/StatefulPartitionedCall^3rd_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::2D
 1st_conv/StatefulPartitionedCall 1st_conv/StatefulPartitionedCall2@
1st_fc/StatefulPartitionedCall1st_fc/StatefulPartitionedCall2D
 2nd_conv/StatefulPartitionedCall 2nd_conv/StatefulPartitionedCall2@
2nd_fc/StatefulPartitionedCall2nd_fc/StatefulPartitionedCall2@
3rd_fc/StatefulPartitionedCall3rd_fc/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
№
~
)__inference_1st_conv_layer_call_fn_397275

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_1st_conv_layer_call_and_return_conditional_losses_3967572
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ж
c
G__inference_2nd_pooling_layer_call_and_return_conditional_losses_396736

inputs
identity╢
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
AvgPoolЗ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╧

▌
D__inference_1st_conv_layer_call_and_return_conditional_losses_396757

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
З	
 
+__inference_sequential_layer_call_fn_397077
st_conv_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallst_conv_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3970542
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:         
(
_user_specified_name1st_conv_input
╧

▌
D__inference_2nd_conv_layer_call_and_return_conditional_losses_396785

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╬
e
G__inference_1st_dropout_layer_call_and_return_conditional_losses_396833

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
·>
┘
F__inference_sequential_layer_call_and_return_conditional_losses_397162

inputs*
&st_conv_conv2d_readvariableop_resource+
'st_conv_biasadd_readvariableop_resource*
&nd_conv_conv2d_readvariableop_resource+
'nd_conv_biasadd_readvariableop_resource(
$st_fc_matmul_readvariableop_resource)
%st_fc_biasadd_readvariableop_resource(
$nd_fc_matmul_readvariableop_resource)
%nd_fc_biasadd_readvariableop_resource(
$rd_fc_matmul_readvariableop_resource)
%rd_fc_biasadd_readvariableop_resource
identityИв1st_conv/BiasAdd/ReadVariableOpв1st_conv/Conv2D/ReadVariableOpв1st_fc/BiasAdd/ReadVariableOpв1st_fc/MatMul/ReadVariableOpв2nd_conv/BiasAdd/ReadVariableOpв2nd_conv/Conv2D/ReadVariableOpв2nd_fc/BiasAdd/ReadVariableOpв2nd_fc/MatMul/ReadVariableOpв3rd_fc/BiasAdd/ReadVariableOpв3rd_fc/MatMul/ReadVariableOpп
1st_conv/Conv2D/ReadVariableOpReadVariableOp&st_conv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
1st_conv/Conv2D/ReadVariableOp┐
1st_conv/Conv2DConv2Dinputs&1st_conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
1st_conv/Conv2Dж
1st_conv/BiasAdd/ReadVariableOpReadVariableOp'st_conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
1st_conv/BiasAdd/ReadVariableOpм
1st_conv/BiasAddBiasAdd1st_conv/Conv2D:output:0'1st_conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
1st_conv/BiasAdd{
1st_conv/ReluRelu1st_conv/BiasAdd:output:0*
T0*/
_output_shapes
:         2
1st_conv/Relu╚
1st_pooling/AvgPoolAvgPool1st_conv/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2
1st_pooling/AvgPoolп
2nd_conv/Conv2D/ReadVariableOpReadVariableOp&nd_conv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
2nd_conv/Conv2D/ReadVariableOp╒
2nd_conv/Conv2DConv2D1st_pooling/AvgPool:output:0&2nd_conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
2nd_conv/Conv2Dж
2nd_conv/BiasAdd/ReadVariableOpReadVariableOp'nd_conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
2nd_conv/BiasAdd/ReadVariableOpм
2nd_conv/BiasAddBiasAdd2nd_conv/Conv2D:output:0'2nd_conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
2nd_conv/BiasAdd{
2nd_conv/ReluRelu2nd_conv/BiasAdd:output:0*
T0*/
_output_shapes
:         2
2nd_conv/Relu╚
2nd_pooling/AvgPoolAvgPool2nd_conv/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2
2nd_pooling/AvgPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/ConstЦ
flatten/ReshapeReshape2nd_pooling/AvgPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А2
flatten/Reshape{
1st_dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
1st_dropout/dropout/Constк
1st_dropout/dropout/MulMulflatten/Reshape:output:0"1st_dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
1st_dropout/dropout/Mul~
1st_dropout/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
:2
1st_dropout/dropout/Shape┘
01st_dropout/dropout/random_uniform/RandomUniformRandomUniform"1st_dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype022
01st_dropout/dropout/random_uniform/RandomUniformН
"1st_dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"1st_dropout/dropout/GreaterEqual/yя
 1st_dropout/dropout/GreaterEqualGreaterEqual91st_dropout/dropout/random_uniform/RandomUniform:output:0+1st_dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2"
 1st_dropout/dropout/GreaterEqualд
1st_dropout/dropout/CastCast$1st_dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
1st_dropout/dropout/Castл
1st_dropout/dropout/Mul_1Mul1st_dropout/dropout/Mul:z:01st_dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
1st_dropout/dropout/Mul_1в
1st_fc/MatMul/ReadVariableOpReadVariableOp$st_fc_matmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype02
1st_fc/MatMul/ReadVariableOpЯ
1st_fc/MatMulMatMul1st_dropout/dropout/Mul_1:z:0$1st_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2
1st_fc/MatMulа
1st_fc/BiasAdd/ReadVariableOpReadVariableOp%st_fc_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
1st_fc/BiasAdd/ReadVariableOpЭ
1st_fc/BiasAddBiasAdd1st_fc/MatMul:product:0%1st_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2
1st_fc/BiasAddm
1st_fc/ReluRelu1st_fc/BiasAdd:output:0*
T0*'
_output_shapes
:         x2
1st_fc/Reluб
2nd_fc/MatMul/ReadVariableOpReadVariableOp$nd_fc_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype02
2nd_fc/MatMul/ReadVariableOpЫ
2nd_fc/MatMulMatMul1st_fc/Relu:activations:0$2nd_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2
2nd_fc/MatMulа
2nd_fc/BiasAdd/ReadVariableOpReadVariableOp%nd_fc_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
2nd_fc/BiasAdd/ReadVariableOpЭ
2nd_fc/BiasAddBiasAdd2nd_fc/MatMul:product:0%2nd_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2
2nd_fc/BiasAddm
2nd_fc/ReluRelu2nd_fc/BiasAdd:output:0*
T0*'
_output_shapes
:         T2
2nd_fc/Reluб
3rd_fc/MatMul/ReadVariableOpReadVariableOp$rd_fc_matmul_readvariableop_resource*
_output_shapes

:T/*
dtype02
3rd_fc/MatMul/ReadVariableOpЫ
3rd_fc/MatMulMatMul2nd_fc/Relu:activations:0$3rd_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2
3rd_fc/MatMulа
3rd_fc/BiasAdd/ReadVariableOpReadVariableOp%rd_fc_biasadd_readvariableop_resource*
_output_shapes
:/*
dtype02
3rd_fc/BiasAdd/ReadVariableOpЭ
3rd_fc/BiasAddBiasAdd3rd_fc/MatMul:product:0%3rd_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2
3rd_fc/BiasAddо
IdentityIdentity3rd_fc/BiasAdd:output:0 ^1st_conv/BiasAdd/ReadVariableOp^1st_conv/Conv2D/ReadVariableOp^1st_fc/BiasAdd/ReadVariableOp^1st_fc/MatMul/ReadVariableOp ^2nd_conv/BiasAdd/ReadVariableOp^2nd_conv/Conv2D/ReadVariableOp^2nd_fc/BiasAdd/ReadVariableOp^2nd_fc/MatMul/ReadVariableOp^3rd_fc/BiasAdd/ReadVariableOp^3rd_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::2B
1st_conv/BiasAdd/ReadVariableOp1st_conv/BiasAdd/ReadVariableOp2@
1st_conv/Conv2D/ReadVariableOp1st_conv/Conv2D/ReadVariableOp2>
1st_fc/BiasAdd/ReadVariableOp1st_fc/BiasAdd/ReadVariableOp2<
1st_fc/MatMul/ReadVariableOp1st_fc/MatMul/ReadVariableOp2B
2nd_conv/BiasAdd/ReadVariableOp2nd_conv/BiasAdd/ReadVariableOp2@
2nd_conv/Conv2D/ReadVariableOp2nd_conv/Conv2D/ReadVariableOp2>
2nd_fc/BiasAdd/ReadVariableOp2nd_fc/BiasAdd/ReadVariableOp2<
2nd_fc/MatMul/ReadVariableOp2nd_fc/MatMul/ReadVariableOp2>
3rd_fc/BiasAdd/ReadVariableOp3rd_fc/BiasAdd/ReadVariableOp2<
3rd_fc/MatMul/ReadVariableOp3rd_fc/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ж
c
G__inference_1st_pooling_layer_call_and_return_conditional_losses_396724

inputs
identity╢
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
AvgPoolЗ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ь	
█
B__inference_2nd_fc_layer_call_and_return_conditional_losses_396884

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xT*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         T2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         T2

Identity"
identityIdentity:output:0*.
_input_shapes
:         x::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         x
 
_user_specified_nameinputs
№
~
)__inference_2nd_conv_layer_call_fn_397295

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_2nd_conv_layer_call_and_return_conditional_losses_3967852
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
З	
 
+__inference_sequential_layer_call_fn_397019
st_conv_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallst_conv_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3969962
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:         
(
_user_specified_name1st_conv_input
и
e
,__inference_1st_dropout_layer_call_fn_397328

inputs
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_dropout_layer_call_and_return_conditional_losses_3968282
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╬
e
G__inference_1st_dropout_layer_call_and_return_conditional_losses_397323

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╪
|
'__inference_2nd_fc_layer_call_fn_397373

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_2nd_fc_layer_call_and_return_conditional_losses_3968842
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         T2

Identity"
identityIdentity:output:0*.
_input_shapes
:         x::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         x
 
_user_specified_nameinputs
е5
┘
F__inference_sequential_layer_call_and_return_conditional_losses_397205

inputs*
&st_conv_conv2d_readvariableop_resource+
'st_conv_biasadd_readvariableop_resource*
&nd_conv_conv2d_readvariableop_resource+
'nd_conv_biasadd_readvariableop_resource(
$st_fc_matmul_readvariableop_resource)
%st_fc_biasadd_readvariableop_resource(
$nd_fc_matmul_readvariableop_resource)
%nd_fc_biasadd_readvariableop_resource(
$rd_fc_matmul_readvariableop_resource)
%rd_fc_biasadd_readvariableop_resource
identityИв1st_conv/BiasAdd/ReadVariableOpв1st_conv/Conv2D/ReadVariableOpв1st_fc/BiasAdd/ReadVariableOpв1st_fc/MatMul/ReadVariableOpв2nd_conv/BiasAdd/ReadVariableOpв2nd_conv/Conv2D/ReadVariableOpв2nd_fc/BiasAdd/ReadVariableOpв2nd_fc/MatMul/ReadVariableOpв3rd_fc/BiasAdd/ReadVariableOpв3rd_fc/MatMul/ReadVariableOpп
1st_conv/Conv2D/ReadVariableOpReadVariableOp&st_conv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
1st_conv/Conv2D/ReadVariableOp┐
1st_conv/Conv2DConv2Dinputs&1st_conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
1st_conv/Conv2Dж
1st_conv/BiasAdd/ReadVariableOpReadVariableOp'st_conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
1st_conv/BiasAdd/ReadVariableOpм
1st_conv/BiasAddBiasAdd1st_conv/Conv2D:output:0'1st_conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
1st_conv/BiasAdd{
1st_conv/ReluRelu1st_conv/BiasAdd:output:0*
T0*/
_output_shapes
:         2
1st_conv/Relu╚
1st_pooling/AvgPoolAvgPool1st_conv/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2
1st_pooling/AvgPoolп
2nd_conv/Conv2D/ReadVariableOpReadVariableOp&nd_conv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
2nd_conv/Conv2D/ReadVariableOp╒
2nd_conv/Conv2DConv2D1st_pooling/AvgPool:output:0&2nd_conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
2nd_conv/Conv2Dж
2nd_conv/BiasAdd/ReadVariableOpReadVariableOp'nd_conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
2nd_conv/BiasAdd/ReadVariableOpм
2nd_conv/BiasAddBiasAdd2nd_conv/Conv2D:output:0'2nd_conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
2nd_conv/BiasAdd{
2nd_conv/ReluRelu2nd_conv/BiasAdd:output:0*
T0*/
_output_shapes
:         2
2nd_conv/Relu╚
2nd_pooling/AvgPoolAvgPool2nd_conv/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2
2nd_pooling/AvgPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/ConstЦ
flatten/ReshapeReshape2nd_pooling/AvgPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А2
flatten/ReshapeЕ
1st_dropout/IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:         А2
1st_dropout/Identityв
1st_fc/MatMul/ReadVariableOpReadVariableOp$st_fc_matmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype02
1st_fc/MatMul/ReadVariableOpЯ
1st_fc/MatMulMatMul1st_dropout/Identity:output:0$1st_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2
1st_fc/MatMulа
1st_fc/BiasAdd/ReadVariableOpReadVariableOp%st_fc_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
1st_fc/BiasAdd/ReadVariableOpЭ
1st_fc/BiasAddBiasAdd1st_fc/MatMul:product:0%1st_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2
1st_fc/BiasAddm
1st_fc/ReluRelu1st_fc/BiasAdd:output:0*
T0*'
_output_shapes
:         x2
1st_fc/Reluб
2nd_fc/MatMul/ReadVariableOpReadVariableOp$nd_fc_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype02
2nd_fc/MatMul/ReadVariableOpЫ
2nd_fc/MatMulMatMul1st_fc/Relu:activations:0$2nd_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2
2nd_fc/MatMulа
2nd_fc/BiasAdd/ReadVariableOpReadVariableOp%nd_fc_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
2nd_fc/BiasAdd/ReadVariableOpЭ
2nd_fc/BiasAddBiasAdd2nd_fc/MatMul:product:0%2nd_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2
2nd_fc/BiasAddm
2nd_fc/ReluRelu2nd_fc/BiasAdd:output:0*
T0*'
_output_shapes
:         T2
2nd_fc/Reluб
3rd_fc/MatMul/ReadVariableOpReadVariableOp$rd_fc_matmul_readvariableop_resource*
_output_shapes

:T/*
dtype02
3rd_fc/MatMul/ReadVariableOpЫ
3rd_fc/MatMulMatMul2nd_fc/Relu:activations:0$3rd_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2
3rd_fc/MatMulа
3rd_fc/BiasAdd/ReadVariableOpReadVariableOp%rd_fc_biasadd_readvariableop_resource*
_output_shapes
:/*
dtype02
3rd_fc/BiasAdd/ReadVariableOpЭ
3rd_fc/BiasAddBiasAdd3rd_fc/MatMul:product:0%3rd_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2
3rd_fc/BiasAddо
IdentityIdentity3rd_fc/BiasAdd:output:0 ^1st_conv/BiasAdd/ReadVariableOp^1st_conv/Conv2D/ReadVariableOp^1st_fc/BiasAdd/ReadVariableOp^1st_fc/MatMul/ReadVariableOp ^2nd_conv/BiasAdd/ReadVariableOp^2nd_conv/Conv2D/ReadVariableOp^2nd_fc/BiasAdd/ReadVariableOp^2nd_fc/MatMul/ReadVariableOp^3rd_fc/BiasAdd/ReadVariableOp^3rd_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::2B
1st_conv/BiasAdd/ReadVariableOp1st_conv/BiasAdd/ReadVariableOp2@
1st_conv/Conv2D/ReadVariableOp1st_conv/Conv2D/ReadVariableOp2>
1st_fc/BiasAdd/ReadVariableOp1st_fc/BiasAdd/ReadVariableOp2<
1st_fc/MatMul/ReadVariableOp1st_fc/MatMul/ReadVariableOp2B
2nd_conv/BiasAdd/ReadVariableOp2nd_conv/BiasAdd/ReadVariableOp2@
2nd_conv/Conv2D/ReadVariableOp2nd_conv/Conv2D/ReadVariableOp2>
2nd_fc/BiasAdd/ReadVariableOp2nd_fc/BiasAdd/ReadVariableOp2<
2nd_fc/MatMul/ReadVariableOp2nd_fc/MatMul/ReadVariableOp2>
3rd_fc/BiasAdd/ReadVariableOp3rd_fc/BiasAdd/ReadVariableOp2<
3rd_fc/MatMul/ReadVariableOp3rd_fc/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ь
H
,__inference_1st_dropout_layer_call_fn_397333

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_dropout_layer_call_and_return_conditional_losses_3968332
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
я	
█
B__inference_1st_fc_layer_call_and_return_conditional_losses_397344

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         x2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         x2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ь	
█
B__inference_2nd_fc_layer_call_and_return_conditional_losses_397364

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xT*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         T2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         T2

Identity"
identityIdentity:output:0*.
_input_shapes
:         x::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         x
 
_user_specified_nameinputs
ОR
╥
__inference__traced_save_397532
file_prefix.
*savev2_1st_conv_kernel_read_readvariableop,
(savev2_1st_conv_bias_read_readvariableop.
*savev2_2nd_conv_kernel_read_readvariableop,
(savev2_2nd_conv_bias_read_readvariableop,
(savev2_1st_fc_kernel_read_readvariableop*
&savev2_1st_fc_bias_read_readvariableop,
(savev2_2nd_fc_kernel_read_readvariableop*
&savev2_2nd_fc_bias_read_readvariableop,
(savev2_3rd_fc_kernel_read_readvariableop*
&savev2_3rd_fc_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_1st_conv_kernel_m_read_readvariableop3
/savev2_adam_1st_conv_bias_m_read_readvariableop5
1savev2_adam_2nd_conv_kernel_m_read_readvariableop3
/savev2_adam_2nd_conv_bias_m_read_readvariableop3
/savev2_adam_1st_fc_kernel_m_read_readvariableop1
-savev2_adam_1st_fc_bias_m_read_readvariableop3
/savev2_adam_2nd_fc_kernel_m_read_readvariableop1
-savev2_adam_2nd_fc_bias_m_read_readvariableop3
/savev2_adam_3rd_fc_kernel_m_read_readvariableop1
-savev2_adam_3rd_fc_bias_m_read_readvariableop5
1savev2_adam_1st_conv_kernel_v_read_readvariableop3
/savev2_adam_1st_conv_bias_v_read_readvariableop5
1savev2_adam_2nd_conv_kernel_v_read_readvariableop3
/savev2_adam_2nd_conv_bias_v_read_readvariableop3
/savev2_adam_1st_fc_kernel_v_read_readvariableop1
-savev2_adam_1st_fc_bias_v_read_readvariableop3
/savev2_adam_2nd_fc_kernel_v_read_readvariableop1
-savev2_adam_2nd_fc_bias_v_read_readvariableop3
/savev2_adam_3rd_fc_kernel_v_read_readvariableop1
-savev2_adam_3rd_fc_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameА
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╪
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesл
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_1st_conv_kernel_read_readvariableop(savev2_1st_conv_bias_read_readvariableop*savev2_2nd_conv_kernel_read_readvariableop(savev2_2nd_conv_bias_read_readvariableop(savev2_1st_fc_kernel_read_readvariableop&savev2_1st_fc_bias_read_readvariableop(savev2_2nd_fc_kernel_read_readvariableop&savev2_2nd_fc_bias_read_readvariableop(savev2_3rd_fc_kernel_read_readvariableop&savev2_3rd_fc_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_1st_conv_kernel_m_read_readvariableop/savev2_adam_1st_conv_bias_m_read_readvariableop1savev2_adam_2nd_conv_kernel_m_read_readvariableop/savev2_adam_2nd_conv_bias_m_read_readvariableop/savev2_adam_1st_fc_kernel_m_read_readvariableop-savev2_adam_1st_fc_bias_m_read_readvariableop/savev2_adam_2nd_fc_kernel_m_read_readvariableop-savev2_adam_2nd_fc_bias_m_read_readvariableop/savev2_adam_3rd_fc_kernel_m_read_readvariableop-savev2_adam_3rd_fc_bias_m_read_readvariableop1savev2_adam_1st_conv_kernel_v_read_readvariableop/savev2_adam_1st_conv_bias_v_read_readvariableop1savev2_adam_2nd_conv_kernel_v_read_readvariableop/savev2_adam_2nd_conv_bias_v_read_readvariableop/savev2_adam_1st_fc_kernel_v_read_readvariableop-savev2_adam_1st_fc_bias_v_read_readvariableop/savev2_adam_2nd_fc_kernel_v_read_readvariableop-savev2_adam_2nd_fc_bias_v_read_readvariableop/savev2_adam_3rd_fc_kernel_v_read_readvariableop-savev2_adam_3rd_fc_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*╬
_input_shapes╝
╣: :::::	Аx:x:xT:T:T/:/: : : : : : : : : :::::	Аx:x:xT:T:T/:/:::::	Аx:x:xT:T:T/:/: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	Аx: 

_output_shapes
:x:$ 

_output_shapes

:xT: 

_output_shapes
:T:$	 

_output_shapes

:T/: 


_output_shapes
:/:
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
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	Аx: 

_output_shapes
:x:$ 

_output_shapes

:xT: 

_output_shapes
:T:$ 

_output_shapes

:T/: 

_output_shapes
:/:,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::%"!

_output_shapes
:	Аx: #

_output_shapes
:x:$$ 

_output_shapes

:xT: %

_output_shapes
:T:$& 

_output_shapes

:T/: '

_output_shapes
:/:(

_output_shapes
: 
╗
_
C__inference_flatten_layer_call_and_return_conditional_losses_396808

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Р	
█
B__inference_3rd_fc_layer_call_and_return_conditional_losses_396910

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T/*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:/*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*.
_input_shapes
:         T::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         T
 
_user_specified_nameinputs
е
H
,__inference_2nd_pooling_layer_call_fn_396742

inputs
identityш
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_2nd_pooling_layer_call_and_return_conditional_losses_3967362
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Р	
█
B__inference_3rd_fc_layer_call_and_return_conditional_losses_397383

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T/*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:/*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*.
_input_shapes
:         T::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         T
 
_user_specified_nameinputs
АB
б
!__inference__wrapped_model_396718
st_conv_input6
2sequential_1st_conv_conv2d_readvariableop_resource7
3sequential_1st_conv_biasadd_readvariableop_resource6
2sequential_2nd_conv_conv2d_readvariableop_resource7
3sequential_2nd_conv_biasadd_readvariableop_resource4
0sequential_1st_fc_matmul_readvariableop_resource5
1sequential_1st_fc_biasadd_readvariableop_resource4
0sequential_2nd_fc_matmul_readvariableop_resource5
1sequential_2nd_fc_biasadd_readvariableop_resource4
0sequential_3rd_fc_matmul_readvariableop_resource5
1sequential_3rd_fc_biasadd_readvariableop_resource
identityИв*sequential/1st_conv/BiasAdd/ReadVariableOpв)sequential/1st_conv/Conv2D/ReadVariableOpв(sequential/1st_fc/BiasAdd/ReadVariableOpв'sequential/1st_fc/MatMul/ReadVariableOpв*sequential/2nd_conv/BiasAdd/ReadVariableOpв)sequential/2nd_conv/Conv2D/ReadVariableOpв(sequential/2nd_fc/BiasAdd/ReadVariableOpв'sequential/2nd_fc/MatMul/ReadVariableOpв(sequential/3rd_fc/BiasAdd/ReadVariableOpв'sequential/3rd_fc/MatMul/ReadVariableOp╤
)sequential/1st_conv/Conv2D/ReadVariableOpReadVariableOp2sequential_1st_conv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)sequential/1st_conv/Conv2D/ReadVariableOpч
sequential/1st_conv/Conv2DConv2Dst_conv_input1sequential/1st_conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
sequential/1st_conv/Conv2D╚
*sequential/1st_conv/BiasAdd/ReadVariableOpReadVariableOp3sequential_1st_conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*sequential/1st_conv/BiasAdd/ReadVariableOp╪
sequential/1st_conv/BiasAddBiasAdd#sequential/1st_conv/Conv2D:output:02sequential/1st_conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
sequential/1st_conv/BiasAddЬ
sequential/1st_conv/ReluRelu$sequential/1st_conv/BiasAdd:output:0*
T0*/
_output_shapes
:         2
sequential/1st_conv/Reluщ
sequential/1st_pooling/AvgPoolAvgPool&sequential/1st_conv/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2 
sequential/1st_pooling/AvgPool╤
)sequential/2nd_conv/Conv2D/ReadVariableOpReadVariableOp2sequential_2nd_conv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)sequential/2nd_conv/Conv2D/ReadVariableOpБ
sequential/2nd_conv/Conv2DConv2D'sequential/1st_pooling/AvgPool:output:01sequential/2nd_conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
sequential/2nd_conv/Conv2D╚
*sequential/2nd_conv/BiasAdd/ReadVariableOpReadVariableOp3sequential_2nd_conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*sequential/2nd_conv/BiasAdd/ReadVariableOp╪
sequential/2nd_conv/BiasAddBiasAdd#sequential/2nd_conv/Conv2D:output:02sequential/2nd_conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
sequential/2nd_conv/BiasAddЬ
sequential/2nd_conv/ReluRelu$sequential/2nd_conv/BiasAdd:output:0*
T0*/
_output_shapes
:         2
sequential/2nd_conv/Reluщ
sequential/2nd_pooling/AvgPoolAvgPool&sequential/2nd_conv/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2 
sequential/2nd_pooling/AvgPoolЕ
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
sequential/flatten/Const┬
sequential/flatten/ReshapeReshape'sequential/2nd_pooling/AvgPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         А2
sequential/flatten/Reshapeж
sequential/1st_dropout/IdentityIdentity#sequential/flatten/Reshape:output:0*
T0*(
_output_shapes
:         А2!
sequential/1st_dropout/Identity─
'sequential/1st_fc/MatMul/ReadVariableOpReadVariableOp0sequential_1st_fc_matmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype02)
'sequential/1st_fc/MatMul/ReadVariableOp╦
sequential/1st_fc/MatMulMatMul(sequential/1st_dropout/Identity:output:0/sequential/1st_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2
sequential/1st_fc/MatMul┬
(sequential/1st_fc/BiasAdd/ReadVariableOpReadVariableOp1sequential_1st_fc_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02*
(sequential/1st_fc/BiasAdd/ReadVariableOp╔
sequential/1st_fc/BiasAddBiasAdd"sequential/1st_fc/MatMul:product:00sequential/1st_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2
sequential/1st_fc/BiasAddО
sequential/1st_fc/ReluRelu"sequential/1st_fc/BiasAdd:output:0*
T0*'
_output_shapes
:         x2
sequential/1st_fc/Relu├
'sequential/2nd_fc/MatMul/ReadVariableOpReadVariableOp0sequential_2nd_fc_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype02)
'sequential/2nd_fc/MatMul/ReadVariableOp╟
sequential/2nd_fc/MatMulMatMul$sequential/1st_fc/Relu:activations:0/sequential/2nd_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2
sequential/2nd_fc/MatMul┬
(sequential/2nd_fc/BiasAdd/ReadVariableOpReadVariableOp1sequential_2nd_fc_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02*
(sequential/2nd_fc/BiasAdd/ReadVariableOp╔
sequential/2nd_fc/BiasAddBiasAdd"sequential/2nd_fc/MatMul:product:00sequential/2nd_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         T2
sequential/2nd_fc/BiasAddО
sequential/2nd_fc/ReluRelu"sequential/2nd_fc/BiasAdd:output:0*
T0*'
_output_shapes
:         T2
sequential/2nd_fc/Relu├
'sequential/3rd_fc/MatMul/ReadVariableOpReadVariableOp0sequential_3rd_fc_matmul_readvariableop_resource*
_output_shapes

:T/*
dtype02)
'sequential/3rd_fc/MatMul/ReadVariableOp╟
sequential/3rd_fc/MatMulMatMul$sequential/2nd_fc/Relu:activations:0/sequential/3rd_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2
sequential/3rd_fc/MatMul┬
(sequential/3rd_fc/BiasAdd/ReadVariableOpReadVariableOp1sequential_3rd_fc_biasadd_readvariableop_resource*
_output_shapes
:/*
dtype02*
(sequential/3rd_fc/BiasAdd/ReadVariableOp╔
sequential/3rd_fc/BiasAddBiasAdd"sequential/3rd_fc/MatMul:product:00sequential/3rd_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         /2
sequential/3rd_fc/BiasAddз
IdentityIdentity"sequential/3rd_fc/BiasAdd:output:0+^sequential/1st_conv/BiasAdd/ReadVariableOp*^sequential/1st_conv/Conv2D/ReadVariableOp)^sequential/1st_fc/BiasAdd/ReadVariableOp(^sequential/1st_fc/MatMul/ReadVariableOp+^sequential/2nd_conv/BiasAdd/ReadVariableOp*^sequential/2nd_conv/Conv2D/ReadVariableOp)^sequential/2nd_fc/BiasAdd/ReadVariableOp(^sequential/2nd_fc/MatMul/ReadVariableOp)^sequential/3rd_fc/BiasAdd/ReadVariableOp(^sequential/3rd_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::2X
*sequential/1st_conv/BiasAdd/ReadVariableOp*sequential/1st_conv/BiasAdd/ReadVariableOp2V
)sequential/1st_conv/Conv2D/ReadVariableOp)sequential/1st_conv/Conv2D/ReadVariableOp2T
(sequential/1st_fc/BiasAdd/ReadVariableOp(sequential/1st_fc/BiasAdd/ReadVariableOp2R
'sequential/1st_fc/MatMul/ReadVariableOp'sequential/1st_fc/MatMul/ReadVariableOp2X
*sequential/2nd_conv/BiasAdd/ReadVariableOp*sequential/2nd_conv/BiasAdd/ReadVariableOp2V
)sequential/2nd_conv/Conv2D/ReadVariableOp)sequential/2nd_conv/Conv2D/ReadVariableOp2T
(sequential/2nd_fc/BiasAdd/ReadVariableOp(sequential/2nd_fc/BiasAdd/ReadVariableOp2R
'sequential/2nd_fc/MatMul/ReadVariableOp'sequential/2nd_fc/MatMul/ReadVariableOp2T
(sequential/3rd_fc/BiasAdd/ReadVariableOp(sequential/3rd_fc/BiasAdd/ReadVariableOp2R
'sequential/3rd_fc/MatMul/ReadVariableOp'sequential/3rd_fc/MatMul/ReadVariableOp:_ [
/
_output_shapes
:         
(
_user_specified_name1st_conv_input
я	
█
B__inference_1st_fc_layer_call_and_return_conditional_losses_396857

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         x2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         x2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╪
|
'__inference_3rd_fc_layer_call_fn_397392

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_3rd_fc_layer_call_and_return_conditional_losses_3969102
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*.
_input_shapes
:         T::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         T
 
_user_specified_nameinputs
╧

▌
D__inference_2nd_conv_layer_call_and_return_conditional_losses_397286

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ё
°
+__inference_sequential_layer_call_fn_397230

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3969962
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
л(
Ё
F__inference_sequential_layer_call_and_return_conditional_losses_396996

inputs
st_conv_396966
st_conv_396968
nd_conv_396972
nd_conv_396974
st_fc_396980
st_fc_396982
nd_fc_396985
nd_fc_396987
rd_fc_396990
rd_fc_396992
identityИв 1st_conv/StatefulPartitionedCallв#1st_dropout/StatefulPartitionedCallв1st_fc/StatefulPartitionedCallв 2nd_conv/StatefulPartitionedCallв2nd_fc/StatefulPartitionedCallв3rd_fc/StatefulPartitionedCallЪ
 1st_conv/StatefulPartitionedCallStatefulPartitionedCallinputsst_conv_396966st_conv_396968*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_1st_conv_layer_call_and_return_conditional_losses_3967572"
 1st_conv/StatefulPartitionedCallИ
1st_pooling/PartitionedCallPartitionedCall)1st_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_pooling_layer_call_and_return_conditional_losses_3967242
1st_pooling/PartitionedCall╕
 2nd_conv/StatefulPartitionedCallStatefulPartitionedCall$1st_pooling/PartitionedCall:output:0nd_conv_396972nd_conv_396974*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_2nd_conv_layer_call_and_return_conditional_losses_3967852"
 2nd_conv/StatefulPartitionedCallИ
2nd_pooling/PartitionedCallPartitionedCall)2nd_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_2nd_pooling_layer_call_and_return_conditional_losses_3967362
2nd_pooling/PartitionedCallЁ
flatten/PartitionedCallPartitionedCall$2nd_pooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3968082
flatten/PartitionedCallР
#1st_dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_1st_dropout_layer_call_and_return_conditional_losses_3968282%
#1st_dropout/StatefulPartitionedCallо
1st_fc/StatefulPartitionedCallStatefulPartitionedCall,1st_dropout/StatefulPartitionedCall:output:0st_fc_396980st_fc_396982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_1st_fc_layer_call_and_return_conditional_losses_3968572 
1st_fc/StatefulPartitionedCallй
2nd_fc/StatefulPartitionedCallStatefulPartitionedCall'1st_fc/StatefulPartitionedCall:output:0nd_fc_396985nd_fc_396987*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_2nd_fc_layer_call_and_return_conditional_losses_3968842 
2nd_fc/StatefulPartitionedCallй
3rd_fc/StatefulPartitionedCallStatefulPartitionedCall'2nd_fc/StatefulPartitionedCall:output:0rd_fc_396990rd_fc_396992*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_3rd_fc_layer_call_and_return_conditional_losses_3969102 
3rd_fc/StatefulPartitionedCall╩
IdentityIdentity'3rd_fc/StatefulPartitionedCall:output:0!^1st_conv/StatefulPartitionedCall$^1st_dropout/StatefulPartitionedCall^1st_fc/StatefulPartitionedCall!^2nd_conv/StatefulPartitionedCall^2nd_fc/StatefulPartitionedCall^3rd_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::2D
 1st_conv/StatefulPartitionedCall 1st_conv/StatefulPartitionedCall2J
#1st_dropout/StatefulPartitionedCall#1st_dropout/StatefulPartitionedCall2@
1st_fc/StatefulPartitionedCall1st_fc/StatefulPartitionedCall2D
 2nd_conv/StatefulPartitionedCall 2nd_conv/StatefulPartitionedCall2@
2nd_fc/StatefulPartitionedCall2nd_fc/StatefulPartitionedCall2@
3rd_fc/StatefulPartitionedCall3rd_fc/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
М
f
G__inference_1st_dropout_layer_call_and_return_conditional_losses_396828

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
_
C__inference_flatten_layer_call_and_return_conditional_losses_397301

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
№г
р
"__inference__traced_restore_397659
file_prefix$
 assignvariableop_1st_conv_kernel$
 assignvariableop_1_1st_conv_bias&
"assignvariableop_2_2nd_conv_kernel$
 assignvariableop_3_2nd_conv_bias$
 assignvariableop_4_1st_fc_kernel"
assignvariableop_5_1st_fc_bias$
 assignvariableop_6_2nd_fc_kernel"
assignvariableop_7_2nd_fc_bias$
 assignvariableop_8_3rd_fc_kernel"
assignvariableop_9_3rd_fc_bias!
assignvariableop_10_adam_iter#
assignvariableop_11_adam_beta_1#
assignvariableop_12_adam_beta_2"
assignvariableop_13_adam_decay*
&assignvariableop_14_adam_learning_rate
assignvariableop_15_total
assignvariableop_16_count
assignvariableop_17_total_1
assignvariableop_18_count_1.
*assignvariableop_19_adam_1st_conv_kernel_m,
(assignvariableop_20_adam_1st_conv_bias_m.
*assignvariableop_21_adam_2nd_conv_kernel_m,
(assignvariableop_22_adam_2nd_conv_bias_m,
(assignvariableop_23_adam_1st_fc_kernel_m*
&assignvariableop_24_adam_1st_fc_bias_m,
(assignvariableop_25_adam_2nd_fc_kernel_m*
&assignvariableop_26_adam_2nd_fc_bias_m,
(assignvariableop_27_adam_3rd_fc_kernel_m*
&assignvariableop_28_adam_3rd_fc_bias_m.
*assignvariableop_29_adam_1st_conv_kernel_v,
(assignvariableop_30_adam_1st_conv_bias_v.
*assignvariableop_31_adam_2nd_conv_kernel_v,
(assignvariableop_32_adam_2nd_conv_bias_v,
(assignvariableop_33_adam_1st_fc_kernel_v*
&assignvariableop_34_adam_1st_fc_bias_v,
(assignvariableop_35_adam_2nd_fc_kernel_v*
&assignvariableop_36_adam_2nd_fc_bias_v,
(assignvariableop_37_adam_3rd_fc_kernel_v*
&assignvariableop_38_adam_3rd_fc_bias_v
identity_40ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names▐
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЎ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╢
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЯ
AssignVariableOpAssignVariableOp assignvariableop_1st_conv_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1е
AssignVariableOp_1AssignVariableOp assignvariableop_1_1st_conv_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2з
AssignVariableOp_2AssignVariableOp"assignvariableop_2_2nd_conv_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3е
AssignVariableOp_3AssignVariableOp assignvariableop_3_2nd_conv_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4е
AssignVariableOp_4AssignVariableOp assignvariableop_4_1st_fc_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5г
AssignVariableOp_5AssignVariableOpassignvariableop_5_1st_fc_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6е
AssignVariableOp_6AssignVariableOp assignvariableop_6_2nd_fc_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7г
AssignVariableOp_7AssignVariableOpassignvariableop_7_2nd_fc_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8е
AssignVariableOp_8AssignVariableOp assignvariableop_8_3rd_fc_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9г
AssignVariableOp_9AssignVariableOpassignvariableop_9_3rd_fc_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10е
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11з
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12з
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ж
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14о
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15б
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16б
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17г
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18г
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19▓
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_1st_conv_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20░
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_1st_conv_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21▓
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_2nd_conv_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22░
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_2nd_conv_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23░
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_1st_fc_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24о
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_1st_fc_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25░
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_2nd_fc_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26о
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_2nd_fc_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27░
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_3rd_fc_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28о
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_3rd_fc_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29▓
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_1st_conv_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30░
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_1st_conv_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31▓
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_2nd_conv_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32░
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_2nd_conv_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33░
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_1st_fc_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34о
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_1st_fc_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35░
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_2nd_fc_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36о
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_2nd_fc_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37░
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_3rd_fc_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38о
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_3rd_fc_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╕
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39л
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*│
_input_shapesб
Ю: :::::::::::::::::::::::::::::::::::::::2$
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
в
D
(__inference_flatten_layer_call_fn_397306

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3968082
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
█
°
$__inference_signature_wrapper_397112
st_conv_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallst_conv_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_3967182
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:         
(
_user_specified_name1st_conv_input
┌
|
'__inference_1st_fc_layer_call_fn_397353

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_1st_fc_layer_call_and_return_conditional_losses_3968572
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         x2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ё
°
+__inference_sequential_layer_call_fn_397255

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         /*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3970542
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         /2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┐
serving_defaultл
Q
1st_conv_input?
 serving_default_1st_conv_input:0         :
3rd_fc0
StatefulPartitionedCall:0         /tensorflow/serving/predict:Да
╜G
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
+Ф&call_and_return_all_conditional_losses
Х_default_save_signature
Ц__call__"°C
_tf_keras_sequential┘C{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "1st_conv_input"}}, {"class_name": "Conv2D", "config": {"name": "1st_conv", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 6, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "AveragePooling2D", "config": {"name": "1st_pooling", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "2nd_conv", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "AveragePooling2D", "config": {"name": "2nd_pooling", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "1st_dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "1st_fc", "trainable": true, "dtype": "float32", "units": 120, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "2nd_fc", "trainable": true, "dtype": "float32", "units": 84, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "3rd_fc", "trainable": true, "dtype": "float32", "units": 47, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "1st_conv_input"}}, {"class_name": "Conv2D", "config": {"name": "1st_conv", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 6, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "AveragePooling2D", "config": {"name": "1st_pooling", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "2nd_conv", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "AveragePooling2D", "config": {"name": "2nd_pooling", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "1st_dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "1st_fc", "trainable": true, "dtype": "float32", "units": 120, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "2nd_fc", "trainable": true, "dtype": "float32", "units": 84, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "3rd_fc", "trainable": true, "dtype": "float32", "units": 47, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "SparseCategoricalAccuracy", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
є


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+Ч&call_and_return_all_conditional_losses
Ш__call__"╠	
_tf_keras_layer▓	{"class_name": "Conv2D", "name": "1st_conv", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "1st_conv", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 6, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
¤
trainable_variables
regularization_losses
	variables
	keras_api
+Щ&call_and_return_all_conditional_losses
Ъ__call__"ь
_tf_keras_layer╥{"class_name": "AveragePooling2D", "name": "1st_pooling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "1st_pooling", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
є	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+Ы&call_and_return_all_conditional_losses
Ь__call__"╠
_tf_keras_layer▓{"class_name": "Conv2D", "name": "2nd_conv", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "2nd_conv", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 6]}}
¤
 trainable_variables
!regularization_losses
"	variables
#	keras_api
+Э&call_and_return_all_conditional_losses
Ю__call__"ь
_tf_keras_layer╥{"class_name": "AveragePooling2D", "name": "2nd_pooling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "2nd_pooling", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ф
$trainable_variables
%regularization_losses
&	variables
'	keras_api
+Я&call_and_return_all_conditional_losses
а__call__"╙
_tf_keras_layer╣{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ы
(trainable_variables
)regularization_losses
*	variables
+	keras_api
+б&call_and_return_all_conditional_losses
в__call__"┌
_tf_keras_layer└{"class_name": "Dropout", "name": "1st_dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "1st_dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
є

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
+г&call_and_return_all_conditional_losses
д__call__"╠
_tf_keras_layer▓{"class_name": "Dense", "name": "1st_fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "1st_fc", "trainable": true, "dtype": "float32", "units": 120, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
Є

2kernel
3bias
4trainable_variables
5regularization_losses
6	variables
7	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"╦
_tf_keras_layer▒{"class_name": "Dense", "name": "2nd_fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "2nd_fc", "trainable": true, "dtype": "float32", "units": 84, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 120}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 120]}}
Є

8kernel
9bias
:trainable_variables
;regularization_losses
<	variables
=	keras_api
+з&call_and_return_all_conditional_losses
и__call__"╦
_tf_keras_layer▒{"class_name": "Dense", "name": "3rd_fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "3rd_fc", "trainable": true, "dtype": "float32", "units": 47, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 84}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
Ы
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemАmБmВmГ,mД-mЕ2mЖ3mЗ8mИ9mЙvКvЛvМvН,vО-vП2vР3vС8vТ9vУ"
	optimizer
f
0
1
2
3
,4
-5
26
37
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
,4
-5
26
37
88
99"
trackable_list_wrapper
╬
trainable_variables
regularization_losses
Cnon_trainable_variables
Dlayer_metrics
Emetrics

Flayers
Glayer_regularization_losses
	variables
Ц__call__
Х_default_save_signature
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
-
йserving_default"
signature_map
):'21st_conv/kernel
:21st_conv/bias
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
░
trainable_variables
regularization_losses
Hnon_trainable_variables
Ilayer_metrics
Jmetrics

Klayers
Llayer_regularization_losses
	variables
Ш__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
trainable_variables
regularization_losses
Mnon_trainable_variables
Nlayer_metrics
Ometrics

Players
Qlayer_regularization_losses
	variables
Ъ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
):'22nd_conv/kernel
:22nd_conv/bias
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
░
trainable_variables
regularization_losses
Rnon_trainable_variables
Slayer_metrics
Tmetrics

Ulayers
Vlayer_regularization_losses
	variables
Ь__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
 trainable_variables
!regularization_losses
Wnon_trainable_variables
Xlayer_metrics
Ymetrics

Zlayers
[layer_regularization_losses
"	variables
Ю__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
$trainable_variables
%regularization_losses
\non_trainable_variables
]layer_metrics
^metrics

_layers
`layer_regularization_losses
&	variables
а__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
(trainable_variables
)regularization_losses
anon_trainable_variables
blayer_metrics
cmetrics

dlayers
elayer_regularization_losses
*	variables
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
 :	Аx21st_fc/kernel
:x21st_fc/bias
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
░
.trainable_variables
/regularization_losses
fnon_trainable_variables
glayer_metrics
hmetrics

ilayers
jlayer_regularization_losses
0	variables
д__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
:xT22nd_fc/kernel
:T22nd_fc/bias
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
░
4trainable_variables
5regularization_losses
knon_trainable_variables
llayer_metrics
mmetrics

nlayers
olayer_regularization_losses
6	variables
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
:T/23rd_fc/kernel
:/23rd_fc/bias
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
░
:trainable_variables
;regularization_losses
pnon_trainable_variables
qlayer_metrics
rmetrics

slayers
tlayer_regularization_losses
<	variables
и__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
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
trackable_dict_wrapper
.
u0
v1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╗
	wtotal
	xcount
y	variables
z	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
П
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"╚
_tf_keras_metricн{"class_name": "SparseCategoricalAccuracy", "name": "sparse_categorical_accuracy", "dtype": "float32", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}
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
.:,2Adam/1st_conv/kernel/m
 :2Adam/1st_conv/bias/m
.:,2Adam/2nd_conv/kernel/m
 :2Adam/2nd_conv/bias/m
%:#	Аx2Adam/1st_fc/kernel/m
:x2Adam/1st_fc/bias/m
$:"xT2Adam/2nd_fc/kernel/m
:T2Adam/2nd_fc/bias/m
$:"T/2Adam/3rd_fc/kernel/m
:/2Adam/3rd_fc/bias/m
.:,2Adam/1st_conv/kernel/v
 :2Adam/1st_conv/bias/v
.:,2Adam/2nd_conv/kernel/v
 :2Adam/2nd_conv/bias/v
%:#	Аx2Adam/1st_fc/kernel/v
:x2Adam/1st_fc/bias/v
$:"xT2Adam/2nd_fc/kernel/v
:T2Adam/2nd_fc/bias/v
$:"T/2Adam/3rd_fc/kernel/v
:/2Adam/3rd_fc/bias/v
ц2у
F__inference_sequential_layer_call_and_return_conditional_losses_397205
F__inference_sequential_layer_call_and_return_conditional_losses_397162
F__inference_sequential_layer_call_and_return_conditional_losses_396960
F__inference_sequential_layer_call_and_return_conditional_losses_396927└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ю2ы
!__inference__wrapped_model_396718┼
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *5в2
0К-
1st_conv_input         
·2ў
+__inference_sequential_layer_call_fn_397077
+__inference_sequential_layer_call_fn_397230
+__inference_sequential_layer_call_fn_397019
+__inference_sequential_layer_call_fn_397255└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ю2ы
D__inference_1st_conv_layer_call_and_return_conditional_losses_397266в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_1st_conv_layer_call_fn_397275в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
п2м
G__inference_1st_pooling_layer_call_and_return_conditional_losses_396724р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ф2С
,__inference_1st_pooling_layer_call_fn_396730р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
ю2ы
D__inference_2nd_conv_layer_call_and_return_conditional_losses_397286в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_2nd_conv_layer_call_fn_397295в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
п2м
G__inference_2nd_pooling_layer_call_and_return_conditional_losses_396736р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ф2С
,__inference_2nd_pooling_layer_call_fn_396742р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
э2ъ
C__inference_flatten_layer_call_and_return_conditional_losses_397301в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_flatten_layer_call_fn_397306в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╠2╔
G__inference_1st_dropout_layer_call_and_return_conditional_losses_397323
G__inference_1st_dropout_layer_call_and_return_conditional_losses_397318┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
,__inference_1st_dropout_layer_call_fn_397328
,__inference_1st_dropout_layer_call_fn_397333┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ь2щ
B__inference_1st_fc_layer_call_and_return_conditional_losses_397344в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_1st_fc_layer_call_fn_397353в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_2nd_fc_layer_call_and_return_conditional_losses_397364в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_2nd_fc_layer_call_fn_397373в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_3rd_fc_layer_call_and_return_conditional_losses_397383в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_3rd_fc_layer_call_fn_397392в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥B╧
$__inference_signature_wrapper_3971121st_conv_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ┤
D__inference_1st_conv_layer_call_and_return_conditional_losses_397266l7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ М
)__inference_1st_conv_layer_call_fn_397275_7в4
-в*
(К%
inputs         
к " К         й
G__inference_1st_dropout_layer_call_and_return_conditional_losses_397318^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ й
G__inference_1st_dropout_layer_call_and_return_conditional_losses_397323^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ Б
,__inference_1st_dropout_layer_call_fn_397328Q4в1
*в'
!К
inputs         А
p
к "К         АБ
,__inference_1st_dropout_layer_call_fn_397333Q4в1
*в'
!К
inputs         А
p 
к "К         Аг
B__inference_1st_fc_layer_call_and_return_conditional_losses_397344],-0в-
&в#
!К
inputs         А
к "%в"
К
0         x
Ъ {
'__inference_1st_fc_layer_call_fn_397353P,-0в-
&в#
!К
inputs         А
к "К         xъ
G__inference_1st_pooling_layer_call_and_return_conditional_losses_396724ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_1st_pooling_layer_call_fn_396730СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ┤
D__inference_2nd_conv_layer_call_and_return_conditional_losses_397286l7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ М
)__inference_2nd_conv_layer_call_fn_397295_7в4
-в*
(К%
inputs         
к " К         в
B__inference_2nd_fc_layer_call_and_return_conditional_losses_397364\23/в,
%в"
 К
inputs         x
к "%в"
К
0         T
Ъ z
'__inference_2nd_fc_layer_call_fn_397373O23/в,
%в"
 К
inputs         x
к "К         Tъ
G__inference_2nd_pooling_layer_call_and_return_conditional_losses_396736ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_2nd_pooling_layer_call_fn_396742СRвO
HвE
CК@
inputs4                                    
к ";К84                                    в
B__inference_3rd_fc_layer_call_and_return_conditional_losses_397383\89/в,
%в"
 К
inputs         T
к "%в"
К
0         /
Ъ z
'__inference_3rd_fc_layer_call_fn_397392O89/в,
%в"
 К
inputs         T
к "К         /г
!__inference__wrapped_model_396718~
,-2389?в<
5в2
0К-
1st_conv_input         
к "/к,
*
3rd_fc К
3rd_fc         /и
C__inference_flatten_layer_call_and_return_conditional_losses_397301a7в4
-в*
(К%
inputs         
к "&в#
К
0         А
Ъ А
(__inference_flatten_layer_call_fn_397306T7в4
-в*
(К%
inputs         
к "К         А╞
F__inference_sequential_layer_call_and_return_conditional_losses_396927|
,-2389GвD
=в:
0К-
1st_conv_input         
p

 
к "%в"
К
0         /
Ъ ╞
F__inference_sequential_layer_call_and_return_conditional_losses_396960|
,-2389GвD
=в:
0К-
1st_conv_input         
p 

 
к "%в"
К
0         /
Ъ ╛
F__inference_sequential_layer_call_and_return_conditional_losses_397162t
,-2389?в<
5в2
(К%
inputs         
p

 
к "%в"
К
0         /
Ъ ╛
F__inference_sequential_layer_call_and_return_conditional_losses_397205t
,-2389?в<
5в2
(К%
inputs         
p 

 
к "%в"
К
0         /
Ъ Ю
+__inference_sequential_layer_call_fn_397019o
,-2389GвD
=в:
0К-
1st_conv_input         
p

 
к "К         /Ю
+__inference_sequential_layer_call_fn_397077o
,-2389GвD
=в:
0К-
1st_conv_input         
p 

 
к "К         /Ц
+__inference_sequential_layer_call_fn_397230g
,-2389?в<
5в2
(К%
inputs         
p

 
к "К         /Ц
+__inference_sequential_layer_call_fn_397255g
,-2389?в<
5в2
(К%
inputs         
p 

 
к "К         /╣
$__inference_signature_wrapper_397112Р
,-2389QвN
в 
GкD
B
1st_conv_input0К-
1st_conv_input         "/к,
*
3rd_fc К
3rd_fc         /