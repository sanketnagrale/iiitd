??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.0-dev202104022v1.12.1-54213-gf584ffbc3bb8??
?
conv2d_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_107/kernel

%conv2d_107/kernel/Read/ReadVariableOpReadVariableOpconv2d_107/kernel*&
_output_shapes
: *
dtype0
v
conv2d_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_107/bias
o
#conv2d_107/bias/Read/ReadVariableOpReadVariableOpconv2d_107/bias*
_output_shapes
: *
dtype0
?
conv2d_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_108/kernel

%conv2d_108/kernel/Read/ReadVariableOpReadVariableOpconv2d_108/kernel*&
_output_shapes
:  *
dtype0
v
conv2d_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_108/bias
o
#conv2d_108/bias/Read/ReadVariableOpReadVariableOpconv2d_108/bias*
_output_shapes
: *
dtype0
?
conv2d_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_109/kernel

%conv2d_109/kernel/Read/ReadVariableOpReadVariableOpconv2d_109/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_109/bias
o
#conv2d_109/bias/Read/ReadVariableOpReadVariableOpconv2d_109/bias*
_output_shapes
:@*
dtype0
|
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?#?* 
shared_namedense_56/kernel
u
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel* 
_output_shapes
:
?#?*
dtype0
s
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_56/bias
l
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes	
:?*
dtype0
{
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?>* 
shared_namedense_57/kernel
t
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes
:	?>*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes
:>*
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
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
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
?
Adam/conv2d_107/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_107/kernel/m
?
,Adam/conv2d_107/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_107/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_107/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_107/bias/m
}
*Adam/conv2d_107/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_107/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_108/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_108/kernel/m
?
,Adam/conv2d_108/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_108/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_108/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_108/bias/m
}
*Adam/conv2d_108/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_108/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_109/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_109/kernel/m
?
,Adam/conv2d_109/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_109/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_109/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_109/bias/m
}
*Adam/conv2d_109/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_109/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?#?*'
shared_nameAdam/dense_56/kernel/m
?
*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m* 
_output_shapes
:
?#?*
dtype0
?
Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_56/bias/m
z
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?>*'
shared_nameAdam/dense_57/kernel/m
?
*Adam/dense_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/m*
_output_shapes
:	?>*
dtype0
?
Adam/dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*%
shared_nameAdam/dense_57/bias/m
y
(Adam/dense_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/m*
_output_shapes
:>*
dtype0
?
Adam/conv2d_107/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_107/kernel/v
?
,Adam/conv2d_107/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_107/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_107/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_107/bias/v
}
*Adam/conv2d_107/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_107/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_108/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_108/kernel/v
?
,Adam/conv2d_108/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_108/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_108/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_108/bias/v
}
*Adam/conv2d_108/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_108/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_109/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_109/kernel/v
?
,Adam/conv2d_109/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_109/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_109/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_109/bias/v
}
*Adam/conv2d_109/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_109/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?#?*'
shared_nameAdam/dense_56/kernel/v
?
*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v* 
_output_shapes
:
?#?*
dtype0
?
Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_56/bias/v
z
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?>*'
shared_nameAdam/dense_57/kernel/v
?
*Adam/dense_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/v*
_output_shapes
:	?>*
dtype0
?
Adam/dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*%
shared_nameAdam/dense_57/bias/v
y
(Adam/dense_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/v*
_output_shapes
:>*
dtype0

NoOpNoOp
?G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?F
value?FB?F B?F
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer_with_weights-2

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer_with_weights-4
layer-14
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures

_rng
	keras_api

	keras_api

_rng
	keras_api

_rng
	keras_api

	keras_api
h

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
R
$	variables
%regularization_losses
&trainable_variables
'	keras_api
h

(kernel
)bias
*	variables
+regularization_losses
,trainable_variables
-	keras_api
R
.	variables
/regularization_losses
0trainable_variables
1	keras_api
h

2kernel
3bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
R
8	variables
9regularization_losses
:trainable_variables
;	keras_api
R
<	variables
=regularization_losses
>trainable_variables
?	keras_api
h

@kernel
Abias
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
R
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
h

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
?
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem?m?(m?)m?2m?3m?@m?Am?Jm?Km?v?v?(v?)v?2v?3v?@v?Av?Jv?Kv?
F
0
1
(2
)3
24
35
@6
A7
J8
K9
 
F
0
1
(2
)3
24
35
@6
A7
J8
K9
?
Umetrics
	variables
Vlayer_metrics
regularization_losses
trainable_variables

Wlayers
Xlayer_regularization_losses
Ynon_trainable_variables
 

Z
_state_var
 
 

[
_state_var
 

\
_state_var
 
 
][
VARIABLE_VALUEconv2d_107/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_107/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
]metrics
 	variables
^layer_metrics
!regularization_losses
"trainable_variables

_layers
`layer_regularization_losses
anon_trainable_variables
 
 
 
?
bmetrics
$	variables
clayer_metrics
%regularization_losses
&trainable_variables

dlayers
elayer_regularization_losses
fnon_trainable_variables
][
VARIABLE_VALUEconv2d_108/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_108/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1
 

(0
)1
?
gmetrics
*	variables
hlayer_metrics
+regularization_losses
,trainable_variables

ilayers
jlayer_regularization_losses
knon_trainable_variables
 
 
 
?
lmetrics
.	variables
mlayer_metrics
/regularization_losses
0trainable_variables

nlayers
olayer_regularization_losses
pnon_trainable_variables
][
VARIABLE_VALUEconv2d_109/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_109/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
?
qmetrics
4	variables
rlayer_metrics
5regularization_losses
6trainable_variables

slayers
tlayer_regularization_losses
unon_trainable_variables
 
 
 
?
vmetrics
8	variables
wlayer_metrics
9regularization_losses
:trainable_variables

xlayers
ylayer_regularization_losses
znon_trainable_variables
 
 
 
?
{metrics
<	variables
|layer_metrics
=regularization_losses
>trainable_variables

}layers
~layer_regularization_losses
non_trainable_variables
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
?
?metrics
B	variables
?layer_metrics
Cregularization_losses
Dtrainable_variables
?layers
 ?layer_regularization_losses
?non_trainable_variables
 
 
 
?
?metrics
F	variables
?layer_metrics
Gregularization_losses
Htrainable_variables
?layers
 ?layer_regularization_losses
?non_trainable_variables
[Y
VARIABLE_VALUEdense_57/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 

J0
K1
?
?metrics
L	variables
?layer_metrics
Mregularization_losses
Ntrainable_variables
?layers
 ?layer_regularization_losses
?non_trainable_variables
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

?0
?1
 
n
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
12
13
14
 
 
PN
VARIABLE_VALUEVariable2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUE
Variable_12layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUE
Variable_22layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
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
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?~
VARIABLE_VALUEAdam/conv2d_107/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_107/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_108/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_108/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_109/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_109/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_107/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_107/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_108/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_108/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_109/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_109/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
#serving_default_random_zoom_4_inputPlaceholder*/
_output_shapes
:?????????dK*
dtype0*$
shape:?????????dK
?
StatefulPartitionedCallStatefulPartitionedCall#serving_default_random_zoom_4_inputconv2d_107/kernelconv2d_107/biasconv2d_108/kernelconv2d_108/biasconv2d_109/kernelconv2d_109/biasdense_56/kerneldense_56/biasdense_57/kerneldense_57/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_89852
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_107/kernel/Read/ReadVariableOp#conv2d_107/bias/Read/ReadVariableOp%conv2d_108/kernel/Read/ReadVariableOp#conv2d_108/bias/Read/ReadVariableOp%conv2d_109/kernel/Read/ReadVariableOp#conv2d_109/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_107/kernel/m/Read/ReadVariableOp*Adam/conv2d_107/bias/m/Read/ReadVariableOp,Adam/conv2d_108/kernel/m/Read/ReadVariableOp*Adam/conv2d_108/bias/m/Read/ReadVariableOp,Adam/conv2d_109/kernel/m/Read/ReadVariableOp*Adam/conv2d_109/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp*Adam/dense_57/kernel/m/Read/ReadVariableOp(Adam/dense_57/bias/m/Read/ReadVariableOp,Adam/conv2d_107/kernel/v/Read/ReadVariableOp*Adam/conv2d_107/bias/v/Read/ReadVariableOp,Adam/conv2d_108/kernel/v/Read/ReadVariableOp*Adam/conv2d_108/bias/v/Read/ReadVariableOp,Adam/conv2d_109/kernel/v/Read/ReadVariableOp*Adam/conv2d_109/bias/v/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOp*Adam/dense_57/kernel/v/Read/ReadVariableOp(Adam/dense_57/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,				*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_90662
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_107/kernelconv2d_107/biasconv2d_108/kernelconv2d_108/biasconv2d_109/kernelconv2d_109/biasdense_56/kerneldense_56/biasdense_57/kerneldense_57/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1Adam/conv2d_107/kernel/mAdam/conv2d_107/bias/mAdam/conv2d_108/kernel/mAdam/conv2d_108/bias/mAdam/conv2d_109/kernel/mAdam/conv2d_109/bias/mAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/dense_57/kernel/mAdam/dense_57/bias/mAdam/conv2d_107/kernel/vAdam/conv2d_107/bias/vAdam/conv2d_108/kernel/vAdam/conv2d_108/bias/vAdam/conv2d_109/kernel/vAdam/conv2d_109/bias/vAdam/dense_56/kernel/vAdam/dense_56/bias/vAdam/dense_57/kernel/vAdam/dense_57/bias/v*6
Tin/
-2+*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_90798??
?

?
C__inference_dense_56_layer_call_and_return_conditional_losses_88791

inputs2
matmul_readvariableop_resource:
?#?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?#?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????#
 
_user_specified_nameinputs
?
?
(__inference_dense_56_layer_call_fn_90440

inputs
unknown:
?#?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_887912
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????#: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????#
 
_user_specified_nameinputs
?S
?

 __inference__wrapped_model_88671
random_zoom_4_inputQ
7sequential_28_conv2d_107_conv2d_readvariableop_resource: F
8sequential_28_conv2d_107_biasadd_readvariableop_resource: Q
7sequential_28_conv2d_108_conv2d_readvariableop_resource:  F
8sequential_28_conv2d_108_biasadd_readvariableop_resource: Q
7sequential_28_conv2d_109_conv2d_readvariableop_resource: @F
8sequential_28_conv2d_109_biasadd_readvariableop_resource:@I
5sequential_28_dense_56_matmul_readvariableop_resource:
?#?E
6sequential_28_dense_56_biasadd_readvariableop_resource:	?H
5sequential_28_dense_57_matmul_readvariableop_resource:	?>D
6sequential_28_dense_57_biasadd_readvariableop_resource:>
identity??/sequential_28/conv2d_107/BiasAdd/ReadVariableOp?.sequential_28/conv2d_107/Conv2D/ReadVariableOp?/sequential_28/conv2d_108/BiasAdd/ReadVariableOp?.sequential_28/conv2d_108/Conv2D/ReadVariableOp?/sequential_28/conv2d_109/BiasAdd/ReadVariableOp?.sequential_28/conv2d_109/Conv2D/ReadVariableOp?-sequential_28/dense_56/BiasAdd/ReadVariableOp?,sequential_28/dense_56/MatMul/ReadVariableOp?-sequential_28/dense_57/BiasAdd/ReadVariableOp?,sequential_28/dense_57/MatMul/ReadVariableOp?
 sequential_28/rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2"
 sequential_28/rescaling_5/Cast/x?
"sequential_28/rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_28/rescaling_5/Cast_1/x?
sequential_28/rescaling_5/mulMulrandom_zoom_4_input)sequential_28/rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????dK2
sequential_28/rescaling_5/mul?
sequential_28/rescaling_5/addAddV2!sequential_28/rescaling_5/mul:z:0+sequential_28/rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????dK2
sequential_28/rescaling_5/add?
.sequential_28/conv2d_107/Conv2D/ReadVariableOpReadVariableOp7sequential_28_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_28/conv2d_107/Conv2D/ReadVariableOp?
sequential_28/conv2d_107/Conv2DConv2D!sequential_28/rescaling_5/add:z:06sequential_28/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI *
paddingVALID*
strides
2!
sequential_28/conv2d_107/Conv2D?
/sequential_28/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp8sequential_28_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_28/conv2d_107/BiasAdd/ReadVariableOp?
 sequential_28/conv2d_107/BiasAddBiasAdd(sequential_28/conv2d_107/Conv2D:output:07sequential_28/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI 2"
 sequential_28/conv2d_107/BiasAdd?
sequential_28/conv2d_107/ReluRelu)sequential_28/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bI 2
sequential_28/conv2d_107/Relu?
'sequential_28/max_pooling2d_107/MaxPoolMaxPool+sequential_28/conv2d_107/Relu:activations:0*/
_output_shapes
:?????????1$ *
ksize
*
paddingVALID*
strides
2)
'sequential_28/max_pooling2d_107/MaxPool?
.sequential_28/conv2d_108/Conv2D/ReadVariableOpReadVariableOp7sequential_28_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.sequential_28/conv2d_108/Conv2D/ReadVariableOp?
sequential_28/conv2d_108/Conv2DConv2D0sequential_28/max_pooling2d_107/MaxPool:output:06sequential_28/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" *
paddingVALID*
strides
2!
sequential_28/conv2d_108/Conv2D?
/sequential_28/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp8sequential_28_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_28/conv2d_108/BiasAdd/ReadVariableOp?
 sequential_28/conv2d_108/BiasAddBiasAdd(sequential_28/conv2d_108/Conv2D:output:07sequential_28/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" 2"
 sequential_28/conv2d_108/BiasAdd?
sequential_28/conv2d_108/ReluRelu)sequential_28/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????/" 2
sequential_28/conv2d_108/Relu?
'sequential_28/max_pooling2d_108/MaxPoolMaxPool+sequential_28/conv2d_108/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2)
'sequential_28/max_pooling2d_108/MaxPool?
.sequential_28/conv2d_109/Conv2D/ReadVariableOpReadVariableOp7sequential_28_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_28/conv2d_109/Conv2D/ReadVariableOp?
sequential_28/conv2d_109/Conv2DConv2D0sequential_28/max_pooling2d_108/MaxPool:output:06sequential_28/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2!
sequential_28/conv2d_109/Conv2D?
/sequential_28/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp8sequential_28_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_28/conv2d_109/BiasAdd/ReadVariableOp?
 sequential_28/conv2d_109/BiasAddBiasAdd(sequential_28/conv2d_109/Conv2D:output:07sequential_28/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 sequential_28/conv2d_109/BiasAdd?
sequential_28/conv2d_109/ReluRelu)sequential_28/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_28/conv2d_109/Relu?
'sequential_28/max_pooling2d_109/MaxPoolMaxPool+sequential_28/conv2d_109/Relu:activations:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2)
'sequential_28/max_pooling2d_109/MaxPool?
sequential_28/flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2 
sequential_28/flatten_28/Const?
 sequential_28/flatten_28/ReshapeReshape0sequential_28/max_pooling2d_109/MaxPool:output:0'sequential_28/flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????#2"
 sequential_28/flatten_28/Reshape?
,sequential_28/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_28_dense_56_matmul_readvariableop_resource* 
_output_shapes
:
?#?*
dtype02.
,sequential_28/dense_56/MatMul/ReadVariableOp?
sequential_28/dense_56/MatMulMatMul)sequential_28/flatten_28/Reshape:output:04sequential_28/dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_28/dense_56/MatMul?
-sequential_28/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_28_dense_56_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_28/dense_56/BiasAdd/ReadVariableOp?
sequential_28/dense_56/BiasAddBiasAdd'sequential_28/dense_56/MatMul:product:05sequential_28/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_28/dense_56/BiasAdd?
sequential_28/dense_56/ReluRelu'sequential_28/dense_56/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_28/dense_56/Relu?
!sequential_28/dropout_25/IdentityIdentity)sequential_28/dense_56/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!sequential_28/dropout_25/Identity?
,sequential_28/dense_57/MatMul/ReadVariableOpReadVariableOp5sequential_28_dense_57_matmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02.
,sequential_28/dense_57/MatMul/ReadVariableOp?
sequential_28/dense_57/MatMulMatMul*sequential_28/dropout_25/Identity:output:04sequential_28/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
sequential_28/dense_57/MatMul?
-sequential_28/dense_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_28_dense_57_biasadd_readvariableop_resource*
_output_shapes
:>*
dtype02/
-sequential_28/dense_57/BiasAdd/ReadVariableOp?
sequential_28/dense_57/BiasAddBiasAdd'sequential_28/dense_57/MatMul:product:05sequential_28/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2 
sequential_28/dense_57/BiasAdd?
sequential_28/dense_57/SoftmaxSoftmax'sequential_28/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????>2 
sequential_28/dense_57/Softmax?
IdentityIdentity(sequential_28/dense_57/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity?
NoOpNoOp0^sequential_28/conv2d_107/BiasAdd/ReadVariableOp/^sequential_28/conv2d_107/Conv2D/ReadVariableOp0^sequential_28/conv2d_108/BiasAdd/ReadVariableOp/^sequential_28/conv2d_108/Conv2D/ReadVariableOp0^sequential_28/conv2d_109/BiasAdd/ReadVariableOp/^sequential_28/conv2d_109/Conv2D/ReadVariableOp.^sequential_28/dense_56/BiasAdd/ReadVariableOp-^sequential_28/dense_56/MatMul/ReadVariableOp.^sequential_28/dense_57/BiasAdd/ReadVariableOp-^sequential_28/dense_57/MatMul/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dK: : : : : : : : : : 2b
/sequential_28/conv2d_107/BiasAdd/ReadVariableOp/sequential_28/conv2d_107/BiasAdd/ReadVariableOp2`
.sequential_28/conv2d_107/Conv2D/ReadVariableOp.sequential_28/conv2d_107/Conv2D/ReadVariableOp2b
/sequential_28/conv2d_108/BiasAdd/ReadVariableOp/sequential_28/conv2d_108/BiasAdd/ReadVariableOp2`
.sequential_28/conv2d_108/Conv2D/ReadVariableOp.sequential_28/conv2d_108/Conv2D/ReadVariableOp2b
/sequential_28/conv2d_109/BiasAdd/ReadVariableOp/sequential_28/conv2d_109/BiasAdd/ReadVariableOp2`
.sequential_28/conv2d_109/Conv2D/ReadVariableOp.sequential_28/conv2d_109/Conv2D/ReadVariableOp2^
-sequential_28/dense_56/BiasAdd/ReadVariableOp-sequential_28/dense_56/BiasAdd/ReadVariableOp2\
,sequential_28/dense_56/MatMul/ReadVariableOp,sequential_28/dense_56/MatMul/ReadVariableOp2^
-sequential_28/dense_57/BiasAdd/ReadVariableOp-sequential_28/dense_57/BiasAdd/ReadVariableOp2\
,sequential_28/dense_57/MatMul/ReadVariableOp,sequential_28/dense_57/MatMul/ReadVariableOp:d `
/
_output_shapes
:?????????dK
-
_user_specified_namerandom_zoom_4_input
?
?
(__inference_dense_57_layer_call_fn_90487

inputs
unknown:	?>
	unknown_0:>
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_888152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_88677

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_dense_56_layer_call_and_return_conditional_losses_90451

inputs2
matmul_readvariableop_resource:
?#?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?#?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????#
 
_user_specified_nameinputs
?
F
*__inference_dropout_25_layer_call_fn_90456

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_888022
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_88802

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_28_layer_call_and_return_conditional_losses_90431

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????#2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
@:W S
/
_output_shapes
:?????????
@
 
_user_specified_nameinputs
?
?
*__inference_conv2d_109_layer_call_fn_90409

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_887652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_90466

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_28_layer_call_and_return_conditional_losses_89336

inputsD
6random_zoom_4_stateful_uniform_rngreadandskip_resource:	H
:random_rotation_2_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_5_stateful_uniform_rngreadandskip_resource:	*
conv2d_107_89305: 
conv2d_107_89307: *
conv2d_108_89311:  
conv2d_108_89313: *
conv2d_109_89317: @
conv2d_109_89319:@"
dense_56_89324:
?#?
dense_56_89326:	?!
dense_57_89330:	?>
dense_57_89332:>
identity??"conv2d_107/StatefulPartitionedCall?"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall?"dropout_25/StatefulPartitionedCall?1random_rotation_2/stateful_uniform/RngReadAndSkip?-random_zoom_4/stateful_uniform/RngReadAndSkip?-random_zoom_5/stateful_uniform/RngReadAndSkip`
random_zoom_4/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
$random_zoom_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$random_zoom_4/stateful_uniform/Const?
#random_zoom_4/stateful_uniform/ProdProd-random_zoom_4/stateful_uniform/shape:output:0-random_zoom_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/stateful_uniform/Prod?
%random_zoom_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/stateful_uniform/Cast/x?
%random_zoom_4/stateful_uniform/Cast_1Cast,random_zoom_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%random_zoom_4/stateful_uniform/Cast_1?
-random_zoom_4/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_4_stateful_uniform_rngreadandskip_resource.random_zoom_4/stateful_uniform/Cast/x:output:0)random_zoom_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:2/
-random_zoom_4/stateful_uniform/RngReadAndSkip?
2random_zoom_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2random_zoom_4/stateful_uniform/strided_slice/stack?
4random_zoom_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice/stack_1?
4random_zoom_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice/stack_2?
,random_zoom_4/stateful_uniform/strided_sliceStridedSlice5random_zoom_4/stateful_uniform/RngReadAndSkip:value:0;random_zoom_4/stateful_uniform/strided_slice/stack:output:0=random_zoom_4/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2.
,random_zoom_4/stateful_uniform/strided_slice?
&random_zoom_4/stateful_uniform/BitcastBitcast5random_zoom_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom_4/stateful_uniform/Bitcast?
4random_zoom_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice_1/stack?
6random_zoom_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_4/stateful_uniform/strided_slice_1/stack_1?
6random_zoom_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_4/stateful_uniform/strided_slice_1/stack_2?
.random_zoom_4/stateful_uniform/strided_slice_1StridedSlice5random_zoom_4/stateful_uniform/RngReadAndSkip:value:0=random_zoom_4/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_4/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:20
.random_zoom_4/stateful_uniform/strided_slice_1?
(random_zoom_4/stateful_uniform/Bitcast_1Bitcast7random_zoom_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02*
(random_zoom_4/stateful_uniform/Bitcast_1?
;random_zoom_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2=
;random_zoom_4/stateful_uniform/StatelessRandomUniformV2/alg?
7random_zoom_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_4/stateful_uniform/shape:output:01random_zoom_4/stateful_uniform/Bitcast_1:output:0/random_zoom_4/stateful_uniform/Bitcast:output:0Drandom_zoom_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????29
7random_zoom_4/stateful_uniform/StatelessRandomUniformV2?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul@random_zoom_4/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concatt
random_zoom_4/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
&random_contrast_2/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 2(
&random_contrast_2/random_uniform/shape?
$random_contrast_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2&
$random_contrast_2/random_uniform/min?
$random_contrast_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_contrast_2/random_uniform/max?
.random_contrast_2/random_uniform/RandomUniformRandomUniform/random_contrast_2/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype020
.random_contrast_2/random_uniform/RandomUniform?
$random_contrast_2/random_uniform/subSub-random_contrast_2/random_uniform/max:output:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/sub?
$random_contrast_2/random_uniform/mulMul7random_contrast_2/random_uniform/RandomUniform:output:0(random_contrast_2/random_uniform/sub:z:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/mul?
 random_contrast_2/random_uniformAdd(random_contrast_2/random_uniform/mul:z:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_contrast_2/random_uniform?
!random_contrast_2/adjust_contrastAdjustContrastv2Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0$random_contrast_2/random_uniform:z:0*/
_output_shapes
:?????????dK2#
!random_contrast_2/adjust_contrast?
*random_contrast_2/adjust_contrast/IdentityIdentity*random_contrast_2/adjust_contrast:output:0*
T0*/
_output_shapes
:?????????dK2,
*random_contrast_2/adjust_contrast/Identity?
random_rotation_2/ShapeShape3random_contrast_2/adjust_contrast/Identity:output:0*
T0*
_output_shapes
:2
random_rotation_2/Shape?
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack?
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1?
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2?
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice?
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack?
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1?
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2?
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1?
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast?
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack?
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1?
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2?
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2?
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1?
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape?
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_2/stateful_uniform/min?
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_2/stateful_uniform/max?
(random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_2/stateful_uniform/Const?
'random_rotation_2/stateful_uniform/ProdProd1random_rotation_2/stateful_uniform/shape:output:01random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/stateful_uniform/Prod?
)random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_2/stateful_uniform/Cast/x?
)random_rotation_2/stateful_uniform/Cast_1Cast0random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_2/stateful_uniform/Cast_1?
1random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_2_stateful_uniform_rngreadandskip_resource2random_rotation_2/stateful_uniform/Cast/x:output:0-random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_2/stateful_uniform/RngReadAndSkip?
6random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_2/stateful_uniform/strided_slice/stack?
8random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice/stack_1?
8random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice/stack_2?
0random_rotation_2/stateful_uniform/strided_sliceStridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0?random_rotation_2/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_2/stateful_uniform/strided_slice?
*random_rotation_2/stateful_uniform/BitcastBitcast9random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_2/stateful_uniform/Bitcast?
8random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice_1/stack?
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1?
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2?
2random_rotation_2/stateful_uniform/strided_slice_1StridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_2/stateful_uniform/strided_slice_1?
,random_rotation_2/stateful_uniform/Bitcast_1Bitcast;random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_2/stateful_uniform/Bitcast_1?
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg?
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_2/stateful_uniform/shape:output:05random_rotation_2/stateful_uniform/Bitcast_1:output:03random_rotation_2/stateful_uniform/Bitcast:output:0Hrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????2=
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2?
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/sub?
&random_rotation_2/stateful_uniform/mulMulDrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_2/stateful_uniform/mul?
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_2/stateful_uniform?
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_2/rotation_matrix/sub/y?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/sub?
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Cos?
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_1/y?
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1?
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/mul?
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Sin?
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_2/y?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2?
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_1?
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_3?
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_4?
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/y?
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_2/rotation_matrix/truediv?
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_5/y?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5?
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_1?
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_6/y?
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6?
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_2?
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_1?
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_7/y?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7?
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_3?
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/add?
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_8?
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/y?
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_2/rotation_matrix/truediv_1?
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/Shape?
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stack?
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1?
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2?
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_slice?
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_2?
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stack?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1?
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_2?
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stack?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2?
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Neg?
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stack?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3?
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_3?
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stack?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4?
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_3?
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stack?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5?
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stack?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6?
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/y?
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mul?
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_2/rotation_matrix/zeros/Less/y?
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/Less?
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1?
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packed?
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const?
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/zeros?
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axis?
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_2/rotation_matrix/concat?
!random_rotation_2/transform/ShapeShape3random_contrast_2/adjust_contrast/Identity:output:0*
T0*
_output_shapes
:2#
!random_rotation_2/transform/Shape?
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stack?
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1?
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2?
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice?
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_value?
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV33random_contrast_2/adjust_contrast/Identity:output:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3?
random_zoom_5/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_5/Shape?
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stack?
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1?
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2?
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice?
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stack?
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1?
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2?
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1?
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast?
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stack?
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1?
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2?
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2?
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1?
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1?
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shape?
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2$
"random_zoom_5/stateful_uniform/min?
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?̌?2$
"random_zoom_5/stateful_uniform/max?
$random_zoom_5/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$random_zoom_5/stateful_uniform/Const?
#random_zoom_5/stateful_uniform/ProdProd-random_zoom_5/stateful_uniform/shape:output:0-random_zoom_5/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/stateful_uniform/Prod?
%random_zoom_5/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/stateful_uniform/Cast/x?
%random_zoom_5/stateful_uniform/Cast_1Cast,random_zoom_5/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%random_zoom_5/stateful_uniform/Cast_1?
-random_zoom_5/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_5_stateful_uniform_rngreadandskip_resource.random_zoom_5/stateful_uniform/Cast/x:output:0)random_zoom_5/stateful_uniform/Cast_1:y:0*
_output_shapes
:2/
-random_zoom_5/stateful_uniform/RngReadAndSkip?
2random_zoom_5/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2random_zoom_5/stateful_uniform/strided_slice/stack?
4random_zoom_5/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice/stack_1?
4random_zoom_5/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice/stack_2?
,random_zoom_5/stateful_uniform/strided_sliceStridedSlice5random_zoom_5/stateful_uniform/RngReadAndSkip:value:0;random_zoom_5/stateful_uniform/strided_slice/stack:output:0=random_zoom_5/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_5/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2.
,random_zoom_5/stateful_uniform/strided_slice?
&random_zoom_5/stateful_uniform/BitcastBitcast5random_zoom_5/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom_5/stateful_uniform/Bitcast?
4random_zoom_5/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice_1/stack?
6random_zoom_5/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_5/stateful_uniform/strided_slice_1/stack_1?
6random_zoom_5/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_5/stateful_uniform/strided_slice_1/stack_2?
.random_zoom_5/stateful_uniform/strided_slice_1StridedSlice5random_zoom_5/stateful_uniform/RngReadAndSkip:value:0=random_zoom_5/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_5/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_5/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:20
.random_zoom_5/stateful_uniform/strided_slice_1?
(random_zoom_5/stateful_uniform/Bitcast_1Bitcast7random_zoom_5/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02*
(random_zoom_5/stateful_uniform/Bitcast_1?
;random_zoom_5/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2=
;random_zoom_5/stateful_uniform/StatelessRandomUniformV2/alg?
7random_zoom_5/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_5/stateful_uniform/shape:output:01random_zoom_5/stateful_uniform/Bitcast_1:output:0/random_zoom_5/stateful_uniform/Bitcast:output:0Drandom_zoom_5/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????29
7random_zoom_5/stateful_uniform/StatelessRandomUniformV2?
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/sub?
"random_zoom_5/stateful_uniform/mulMul@random_zoom_5/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_5/stateful_uniform/mul?
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axis?
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_5/concat?
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape?
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stack?
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1?
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2?
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_slice?
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_5/zoom_matrix/sub/y?
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/sub?
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y?
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truediv?
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stack?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1?
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_1/x?
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_1?
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_5/zoom_matrix/mul?
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_2/y?
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2?
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/y?
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1?
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stack?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2?
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_3/x?
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_3?
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/mul_1?
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stack?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3?
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y?
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mul?
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_5/zoom_matrix/zeros/Less/y?
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/Less?
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1?
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packed?
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/Const?
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/zeros?
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/y?
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mul?
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y?
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/Less?
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1?
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packed?
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Const?
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_1?
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stack?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4?
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/y?
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mul?
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y?
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/Less?
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1?
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packed?
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Const?
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_2?
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axis?
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_5/zoom_matrix/concat?
random_zoom_5/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape?
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack?
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1?
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2?
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_slice?
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_value?
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3m
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMulGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/add?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCallrescaling_5/add:z:0conv2d_107_89305conv2d_107_89307*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bI *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_887292$
"conv2d_107/StatefulPartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_886772#
!max_pooling2d_107/PartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_107/PartitionedCall:output:0conv2d_108_89311conv2d_108_89313*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????/" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_887472$
"conv2d_108/StatefulPartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_886892#
!max_pooling2d_108/PartitionedCall?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_89317conv2d_109_89319*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_887652$
"conv2d_109/StatefulPartitionedCall?
!max_pooling2d_109/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_887012#
!max_pooling2d_109/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall*max_pooling2d_109/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_887782
flatten_28/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_56_89324dense_56_89326*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_887912"
 dense_56/StatefulPartitionedCall?
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_888752$
"dropout_25/StatefulPartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_57_89330dense_57_89332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_888152"
 dense_57/StatefulPartitionedCall?
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity?
NoOpNoOp#^conv2d_107/StatefulPartitionedCall#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall2^random_rotation_2/stateful_uniform/RngReadAndSkip.^random_zoom_4/stateful_uniform/RngReadAndSkip.^random_zoom_5/stateful_uniform/RngReadAndSkip*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:?????????dK: : : : : : : : : : : : : 2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2f
1random_rotation_2/stateful_uniform/RngReadAndSkip1random_rotation_2/stateful_uniform/RngReadAndSkip2^
-random_zoom_4/stateful_uniform/RngReadAndSkip-random_zoom_4/stateful_uniform/RngReadAndSkip2^
-random_zoom_5/stateful_uniform/RngReadAndSkip-random_zoom_5/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
?
d
E__inference_dropout_25_layer_call_and_return_conditional_losses_88875

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_88701

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_dense_57_layer_call_and_return_conditional_losses_90498

inputs1
matmul_readvariableop_resource:	?>-
biasadd_readvariableop_resource:>
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:>*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????>2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_90798
file_prefix<
"assignvariableop_conv2d_107_kernel: 0
"assignvariableop_1_conv2d_107_bias: >
$assignvariableop_2_conv2d_108_kernel:  0
"assignvariableop_3_conv2d_108_bias: >
$assignvariableop_4_conv2d_109_kernel: @0
"assignvariableop_5_conv2d_109_bias:@6
"assignvariableop_6_dense_56_kernel:
?#?/
 assignvariableop_7_dense_56_bias:	?5
"assignvariableop_8_dense_57_kernel:	?>.
 assignvariableop_9_dense_57_bias:>'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: *
assignvariableop_15_variable:	,
assignvariableop_16_variable_1:	,
assignvariableop_17_variable_2:	#
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: F
,assignvariableop_22_adam_conv2d_107_kernel_m: 8
*assignvariableop_23_adam_conv2d_107_bias_m: F
,assignvariableop_24_adam_conv2d_108_kernel_m:  8
*assignvariableop_25_adam_conv2d_108_bias_m: F
,assignvariableop_26_adam_conv2d_109_kernel_m: @8
*assignvariableop_27_adam_conv2d_109_bias_m:@>
*assignvariableop_28_adam_dense_56_kernel_m:
?#?7
(assignvariableop_29_adam_dense_56_bias_m:	?=
*assignvariableop_30_adam_dense_57_kernel_m:	?>6
(assignvariableop_31_adam_dense_57_bias_m:>F
,assignvariableop_32_adam_conv2d_107_kernel_v: 8
*assignvariableop_33_adam_conv2d_107_bias_v: F
,assignvariableop_34_adam_conv2d_108_kernel_v:  8
*assignvariableop_35_adam_conv2d_108_bias_v: F
,assignvariableop_36_adam_conv2d_109_kernel_v: @8
*assignvariableop_37_adam_conv2d_109_bias_v:@>
*assignvariableop_38_adam_dense_56_kernel_v:
?#?7
(assignvariableop_39_adam_dense_56_bias_v:	?=
*assignvariableop_40_adam_dense_57_kernel_v:	?>6
(assignvariableop_41_adam_dense_57_bias_v:>
identity_43??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+				2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_107_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_107_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_108_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_108_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_109_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_109_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_56_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_56_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_57_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_57_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp,assignvariableop_22_adam_conv2d_107_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_107_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_conv2d_108_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_108_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp,assignvariableop_26_adam_conv2d_109_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_109_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_56_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense_56_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_57_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_dense_57_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_conv2d_107_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_107_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp,assignvariableop_34_adam_conv2d_108_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_108_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp,assignvariableop_36_adam_conv2d_109_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_109_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_dense_56_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_dense_56_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_dense_57_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense_57_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42f
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_43?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 2
NoOp_1"#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
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
đ
?
H__inference_sequential_28_layer_call_and_return_conditional_losses_90360

inputsD
6random_zoom_4_stateful_uniform_rngreadandskip_resource:	H
:random_rotation_2_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_5_stateful_uniform_rngreadandskip_resource:	C
)conv2d_107_conv2d_readvariableop_resource: 8
*conv2d_107_biasadd_readvariableop_resource: C
)conv2d_108_conv2d_readvariableop_resource:  8
*conv2d_108_biasadd_readvariableop_resource: C
)conv2d_109_conv2d_readvariableop_resource: @8
*conv2d_109_biasadd_readvariableop_resource:@;
'dense_56_matmul_readvariableop_resource:
?#?7
(dense_56_biasadd_readvariableop_resource:	?:
'dense_57_matmul_readvariableop_resource:	?>6
(dense_57_biasadd_readvariableop_resource:>
identity??!conv2d_107/BiasAdd/ReadVariableOp? conv2d_107/Conv2D/ReadVariableOp?!conv2d_108/BiasAdd/ReadVariableOp? conv2d_108/Conv2D/ReadVariableOp?!conv2d_109/BiasAdd/ReadVariableOp? conv2d_109/Conv2D/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?1random_rotation_2/stateful_uniform/RngReadAndSkip?-random_zoom_4/stateful_uniform/RngReadAndSkip?-random_zoom_5/stateful_uniform/RngReadAndSkip`
random_zoom_4/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
$random_zoom_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$random_zoom_4/stateful_uniform/Const?
#random_zoom_4/stateful_uniform/ProdProd-random_zoom_4/stateful_uniform/shape:output:0-random_zoom_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/stateful_uniform/Prod?
%random_zoom_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/stateful_uniform/Cast/x?
%random_zoom_4/stateful_uniform/Cast_1Cast,random_zoom_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%random_zoom_4/stateful_uniform/Cast_1?
-random_zoom_4/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_4_stateful_uniform_rngreadandskip_resource.random_zoom_4/stateful_uniform/Cast/x:output:0)random_zoom_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:2/
-random_zoom_4/stateful_uniform/RngReadAndSkip?
2random_zoom_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2random_zoom_4/stateful_uniform/strided_slice/stack?
4random_zoom_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice/stack_1?
4random_zoom_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice/stack_2?
,random_zoom_4/stateful_uniform/strided_sliceStridedSlice5random_zoom_4/stateful_uniform/RngReadAndSkip:value:0;random_zoom_4/stateful_uniform/strided_slice/stack:output:0=random_zoom_4/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2.
,random_zoom_4/stateful_uniform/strided_slice?
&random_zoom_4/stateful_uniform/BitcastBitcast5random_zoom_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom_4/stateful_uniform/Bitcast?
4random_zoom_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice_1/stack?
6random_zoom_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_4/stateful_uniform/strided_slice_1/stack_1?
6random_zoom_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_4/stateful_uniform/strided_slice_1/stack_2?
.random_zoom_4/stateful_uniform/strided_slice_1StridedSlice5random_zoom_4/stateful_uniform/RngReadAndSkip:value:0=random_zoom_4/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_4/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:20
.random_zoom_4/stateful_uniform/strided_slice_1?
(random_zoom_4/stateful_uniform/Bitcast_1Bitcast7random_zoom_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02*
(random_zoom_4/stateful_uniform/Bitcast_1?
;random_zoom_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2=
;random_zoom_4/stateful_uniform/StatelessRandomUniformV2/alg?
7random_zoom_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_4/stateful_uniform/shape:output:01random_zoom_4/stateful_uniform/Bitcast_1:output:0/random_zoom_4/stateful_uniform/Bitcast:output:0Drandom_zoom_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????29
7random_zoom_4/stateful_uniform/StatelessRandomUniformV2?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul@random_zoom_4/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concatt
random_zoom_4/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
&random_contrast_2/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 2(
&random_contrast_2/random_uniform/shape?
$random_contrast_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2&
$random_contrast_2/random_uniform/min?
$random_contrast_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_contrast_2/random_uniform/max?
.random_contrast_2/random_uniform/RandomUniformRandomUniform/random_contrast_2/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype020
.random_contrast_2/random_uniform/RandomUniform?
$random_contrast_2/random_uniform/subSub-random_contrast_2/random_uniform/max:output:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/sub?
$random_contrast_2/random_uniform/mulMul7random_contrast_2/random_uniform/RandomUniform:output:0(random_contrast_2/random_uniform/sub:z:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/mul?
 random_contrast_2/random_uniformAdd(random_contrast_2/random_uniform/mul:z:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_contrast_2/random_uniform?
!random_contrast_2/adjust_contrastAdjustContrastv2Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0$random_contrast_2/random_uniform:z:0*/
_output_shapes
:?????????dK2#
!random_contrast_2/adjust_contrast?
*random_contrast_2/adjust_contrast/IdentityIdentity*random_contrast_2/adjust_contrast:output:0*
T0*/
_output_shapes
:?????????dK2,
*random_contrast_2/adjust_contrast/Identity?
random_rotation_2/ShapeShape3random_contrast_2/adjust_contrast/Identity:output:0*
T0*
_output_shapes
:2
random_rotation_2/Shape?
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack?
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1?
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2?
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice?
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack?
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1?
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2?
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1?
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast?
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack?
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1?
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2?
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2?
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1?
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape?
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_2/stateful_uniform/min?
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_2/stateful_uniform/max?
(random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_2/stateful_uniform/Const?
'random_rotation_2/stateful_uniform/ProdProd1random_rotation_2/stateful_uniform/shape:output:01random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/stateful_uniform/Prod?
)random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_2/stateful_uniform/Cast/x?
)random_rotation_2/stateful_uniform/Cast_1Cast0random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_2/stateful_uniform/Cast_1?
1random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_2_stateful_uniform_rngreadandskip_resource2random_rotation_2/stateful_uniform/Cast/x:output:0-random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_2/stateful_uniform/RngReadAndSkip?
6random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_2/stateful_uniform/strided_slice/stack?
8random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice/stack_1?
8random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice/stack_2?
0random_rotation_2/stateful_uniform/strided_sliceStridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0?random_rotation_2/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_2/stateful_uniform/strided_slice?
*random_rotation_2/stateful_uniform/BitcastBitcast9random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_2/stateful_uniform/Bitcast?
8random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice_1/stack?
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1?
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2?
2random_rotation_2/stateful_uniform/strided_slice_1StridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_2/stateful_uniform/strided_slice_1?
,random_rotation_2/stateful_uniform/Bitcast_1Bitcast;random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_2/stateful_uniform/Bitcast_1?
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg?
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_2/stateful_uniform/shape:output:05random_rotation_2/stateful_uniform/Bitcast_1:output:03random_rotation_2/stateful_uniform/Bitcast:output:0Hrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????2=
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2?
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/sub?
&random_rotation_2/stateful_uniform/mulMulDrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_2/stateful_uniform/mul?
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_2/stateful_uniform?
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_2/rotation_matrix/sub/y?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/sub?
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Cos?
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_1/y?
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1?
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/mul?
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Sin?
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_2/y?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2?
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_1?
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_3?
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_4?
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/y?
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_2/rotation_matrix/truediv?
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_5/y?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5?
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_1?
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_6/y?
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6?
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_2?
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_1?
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_7/y?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7?
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_3?
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/add?
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_8?
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/y?
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_2/rotation_matrix/truediv_1?
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/Shape?
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stack?
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1?
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2?
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_slice?
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_2?
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stack?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1?
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_2?
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stack?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2?
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Neg?
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stack?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3?
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_3?
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stack?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4?
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_3?
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stack?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5?
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stack?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6?
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/y?
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mul?
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_2/rotation_matrix/zeros/Less/y?
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/Less?
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1?
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packed?
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const?
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/zeros?
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axis?
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_2/rotation_matrix/concat?
!random_rotation_2/transform/ShapeShape3random_contrast_2/adjust_contrast/Identity:output:0*
T0*
_output_shapes
:2#
!random_rotation_2/transform/Shape?
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stack?
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1?
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2?
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice?
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_value?
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV33random_contrast_2/adjust_contrast/Identity:output:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3?
random_zoom_5/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_5/Shape?
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stack?
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1?
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2?
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice?
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stack?
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1?
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2?
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1?
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast?
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stack?
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1?
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2?
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2?
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1?
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1?
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shape?
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2$
"random_zoom_5/stateful_uniform/min?
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?̌?2$
"random_zoom_5/stateful_uniform/max?
$random_zoom_5/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$random_zoom_5/stateful_uniform/Const?
#random_zoom_5/stateful_uniform/ProdProd-random_zoom_5/stateful_uniform/shape:output:0-random_zoom_5/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/stateful_uniform/Prod?
%random_zoom_5/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/stateful_uniform/Cast/x?
%random_zoom_5/stateful_uniform/Cast_1Cast,random_zoom_5/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%random_zoom_5/stateful_uniform/Cast_1?
-random_zoom_5/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_5_stateful_uniform_rngreadandskip_resource.random_zoom_5/stateful_uniform/Cast/x:output:0)random_zoom_5/stateful_uniform/Cast_1:y:0*
_output_shapes
:2/
-random_zoom_5/stateful_uniform/RngReadAndSkip?
2random_zoom_5/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2random_zoom_5/stateful_uniform/strided_slice/stack?
4random_zoom_5/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice/stack_1?
4random_zoom_5/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice/stack_2?
,random_zoom_5/stateful_uniform/strided_sliceStridedSlice5random_zoom_5/stateful_uniform/RngReadAndSkip:value:0;random_zoom_5/stateful_uniform/strided_slice/stack:output:0=random_zoom_5/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_5/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2.
,random_zoom_5/stateful_uniform/strided_slice?
&random_zoom_5/stateful_uniform/BitcastBitcast5random_zoom_5/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom_5/stateful_uniform/Bitcast?
4random_zoom_5/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice_1/stack?
6random_zoom_5/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_5/stateful_uniform/strided_slice_1/stack_1?
6random_zoom_5/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_5/stateful_uniform/strided_slice_1/stack_2?
.random_zoom_5/stateful_uniform/strided_slice_1StridedSlice5random_zoom_5/stateful_uniform/RngReadAndSkip:value:0=random_zoom_5/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_5/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_5/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:20
.random_zoom_5/stateful_uniform/strided_slice_1?
(random_zoom_5/stateful_uniform/Bitcast_1Bitcast7random_zoom_5/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02*
(random_zoom_5/stateful_uniform/Bitcast_1?
;random_zoom_5/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2=
;random_zoom_5/stateful_uniform/StatelessRandomUniformV2/alg?
7random_zoom_5/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_5/stateful_uniform/shape:output:01random_zoom_5/stateful_uniform/Bitcast_1:output:0/random_zoom_5/stateful_uniform/Bitcast:output:0Drandom_zoom_5/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????29
7random_zoom_5/stateful_uniform/StatelessRandomUniformV2?
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/sub?
"random_zoom_5/stateful_uniform/mulMul@random_zoom_5/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_5/stateful_uniform/mul?
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axis?
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_5/concat?
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape?
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stack?
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1?
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2?
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_slice?
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_5/zoom_matrix/sub/y?
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/sub?
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y?
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truediv?
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stack?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1?
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_1/x?
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_1?
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_5/zoom_matrix/mul?
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_2/y?
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2?
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/y?
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1?
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stack?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2?
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_3/x?
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_3?
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/mul_1?
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stack?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3?
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y?
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mul?
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_5/zoom_matrix/zeros/Less/y?
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/Less?
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1?
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packed?
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/Const?
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/zeros?
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/y?
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mul?
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y?
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/Less?
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1?
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packed?
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Const?
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_1?
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stack?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4?
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/y?
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mul?
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y?
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/Less?
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1?
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packed?
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Const?
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_2?
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axis?
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_5/zoom_matrix/concat?
random_zoom_5/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape?
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack?
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1?
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2?
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_slice?
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_value?
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3m
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMulGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/add?
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_107/Conv2D/ReadVariableOp?
conv2d_107/Conv2DConv2Drescaling_5/add:z:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI *
paddingVALID*
strides
2
conv2d_107/Conv2D?
!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_107/BiasAdd/ReadVariableOp?
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI 2
conv2d_107/BiasAdd?
conv2d_107/ReluReluconv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bI 2
conv2d_107/Relu?
max_pooling2d_107/MaxPoolMaxPoolconv2d_107/Relu:activations:0*/
_output_shapes
:?????????1$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_107/MaxPool?
 conv2d_108/Conv2D/ReadVariableOpReadVariableOp)conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_108/Conv2D/ReadVariableOp?
conv2d_108/Conv2DConv2D"max_pooling2d_107/MaxPool:output:0(conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" *
paddingVALID*
strides
2
conv2d_108/Conv2D?
!conv2d_108/BiasAdd/ReadVariableOpReadVariableOp*conv2d_108_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_108/BiasAdd/ReadVariableOp?
conv2d_108/BiasAddBiasAddconv2d_108/Conv2D:output:0)conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" 2
conv2d_108/BiasAdd?
conv2d_108/ReluReluconv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????/" 2
conv2d_108/Relu?
max_pooling2d_108/MaxPoolMaxPoolconv2d_108/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_108/MaxPool?
 conv2d_109/Conv2D/ReadVariableOpReadVariableOp)conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_109/Conv2D/ReadVariableOp?
conv2d_109/Conv2DConv2D"max_pooling2d_108/MaxPool:output:0(conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_109/Conv2D?
!conv2d_109/BiasAdd/ReadVariableOpReadVariableOp*conv2d_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_109/BiasAdd/ReadVariableOp?
conv2d_109/BiasAddBiasAddconv2d_109/Conv2D:output:0)conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_109/BiasAdd?
conv2d_109/ReluReluconv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_109/Relu?
max_pooling2d_109/MaxPoolMaxPoolconv2d_109/Relu:activations:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_109/MaxPoolu
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_28/Const?
flatten_28/ReshapeReshape"max_pooling2d_109/MaxPool:output:0flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????#2
flatten_28/Reshape?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource* 
_output_shapes
:
?#?*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMulflatten_28/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_56/BiasAddt
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_56/Reluy
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout_25/dropout/Const?
dropout_25/dropout/MulMuldense_56/Relu:activations:0!dropout_25/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_25/dropout/Mul
dropout_25/dropout/ShapeShapedense_56/Relu:activations:0*
T0*
_output_shapes
:2
dropout_25/dropout/Shape?
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_25/dropout/random_uniform/RandomUniform?
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2#
!dropout_25/dropout/GreaterEqual/y?
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_25/dropout/GreaterEqual?
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_25/dropout/Cast?
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_25/dropout/Mul_1?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMuldropout_25/dropout/Mul_1:z:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:>*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
dense_57/BiasAdd|
dense_57/SoftmaxSoftmaxdense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????>2
dense_57/Softmaxu
IdentityIdentitydense_57/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity?
NoOpNoOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp"^conv2d_108/BiasAdd/ReadVariableOp!^conv2d_108/Conv2D/ReadVariableOp"^conv2d_109/BiasAdd/ReadVariableOp!^conv2d_109/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp2^random_rotation_2/stateful_uniform/RngReadAndSkip.^random_zoom_4/stateful_uniform/RngReadAndSkip.^random_zoom_5/stateful_uniform/RngReadAndSkip*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:?????????dK: : : : : : : : : : : : : 2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp2F
!conv2d_108/BiasAdd/ReadVariableOp!conv2d_108/BiasAdd/ReadVariableOp2D
 conv2d_108/Conv2D/ReadVariableOp conv2d_108/Conv2D/ReadVariableOp2F
!conv2d_109/BiasAdd/ReadVariableOp!conv2d_109/BiasAdd/ReadVariableOp2D
 conv2d_109/Conv2D/ReadVariableOp conv2d_109/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2f
1random_rotation_2/stateful_uniform/RngReadAndSkip1random_rotation_2/stateful_uniform/RngReadAndSkip2^
-random_zoom_4/stateful_uniform/RngReadAndSkip-random_zoom_4/stateful_uniform/RngReadAndSkip2^
-random_zoom_5/stateful_uniform/RngReadAndSkip-random_zoom_5/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
?
?
E__inference_conv2d_107_layer_call_and_return_conditional_losses_88729

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????bI 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????bI 2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_109_layer_call_fn_88707

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_887012
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?1
?
H__inference_sequential_28_layer_call_and_return_conditional_losses_89434
random_zoom_4_input*
conv2d_107_89403: 
conv2d_107_89405: *
conv2d_108_89409:  
conv2d_108_89411: *
conv2d_109_89415: @
conv2d_109_89417:@"
dense_56_89422:
?#?
dense_56_89424:	?!
dense_57_89428:	?>
dense_57_89430:>
identity??"conv2d_107/StatefulPartitionedCall?"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCallm
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMulrandom_zoom_4_inputrescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/add?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCallrescaling_5/add:z:0conv2d_107_89403conv2d_107_89405*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bI *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_887292$
"conv2d_107/StatefulPartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_886772#
!max_pooling2d_107/PartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_107/PartitionedCall:output:0conv2d_108_89409conv2d_108_89411*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????/" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_887472$
"conv2d_108/StatefulPartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_886892#
!max_pooling2d_108/PartitionedCall?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_89415conv2d_109_89417*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_887652$
"conv2d_109/StatefulPartitionedCall?
!max_pooling2d_109/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_887012#
!max_pooling2d_109/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall*max_pooling2d_109/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_887782
flatten_28/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_56_89422dense_56_89424*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_887912"
 dense_56/StatefulPartitionedCall?
dropout_25/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_888022
dropout_25/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_57_89428dense_57_89430*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_888152"
 dense_57/StatefulPartitionedCall?
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity?
NoOpNoOp#^conv2d_107/StatefulPartitionedCall#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dK: : : : : : : : : : 2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:d `
/
_output_shapes
:?????????dK
-
_user_specified_namerandom_zoom_4_input
?
h
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_88689

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_28_layer_call_fn_88845
random_zoom_4_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
?#?
	unknown_6:	?
	unknown_7:	?>
	unknown_8:>
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_28_layer_call_and_return_conditional_losses_888222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dK: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????dK
-
_user_specified_namerandom_zoom_4_input
?1
?
H__inference_sequential_28_layer_call_and_return_conditional_losses_88822

inputs*
conv2d_107_88730: 
conv2d_107_88732: *
conv2d_108_88748:  
conv2d_108_88750: *
conv2d_109_88766: @
conv2d_109_88768:@"
dense_56_88792:
?#?
dense_56_88794:	?!
dense_57_88816:	?>
dense_57_88818:>
identity??"conv2d_107/StatefulPartitionedCall?"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCallm
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMulinputsrescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/add?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCallrescaling_5/add:z:0conv2d_107_88730conv2d_107_88732*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bI *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_887292$
"conv2d_107/StatefulPartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_886772#
!max_pooling2d_107/PartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_107/PartitionedCall:output:0conv2d_108_88748conv2d_108_88750*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????/" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_887472$
"conv2d_108/StatefulPartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_886892#
!max_pooling2d_108/PartitionedCall?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_88766conv2d_109_88768*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_887652$
"conv2d_109/StatefulPartitionedCall?
!max_pooling2d_109/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_887012#
!max_pooling2d_109/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall*max_pooling2d_109/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_887782
flatten_28/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_56_88792dense_56_88794*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_887912"
 dense_56/StatefulPartitionedCall?
dropout_25/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_888022
dropout_25/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_57_88816dense_57_88818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_888152"
 dense_57/StatefulPartitionedCall?
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity?
NoOpNoOp#^conv2d_107/StatefulPartitionedCall#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dK: : : : : : : : : : 2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
?
?
E__inference_conv2d_108_layer_call_and_return_conditional_losses_88747

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????/" 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????/" 2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1$ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????1$ 
 
_user_specified_nameinputs
?
c
*__inference_dropout_25_layer_call_fn_90461

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_888752
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?X
?
__inference__traced_save_90662
file_prefix0
,savev2_conv2d_107_kernel_read_readvariableop.
*savev2_conv2d_107_bias_read_readvariableop0
,savev2_conv2d_108_kernel_read_readvariableop.
*savev2_conv2d_108_bias_read_readvariableop0
,savev2_conv2d_109_kernel_read_readvariableop.
*savev2_conv2d_109_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_107_kernel_m_read_readvariableop5
1savev2_adam_conv2d_107_bias_m_read_readvariableop7
3savev2_adam_conv2d_108_kernel_m_read_readvariableop5
1savev2_adam_conv2d_108_bias_m_read_readvariableop7
3savev2_adam_conv2d_109_kernel_m_read_readvariableop5
1savev2_adam_conv2d_109_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop5
1savev2_adam_dense_57_kernel_m_read_readvariableop3
/savev2_adam_dense_57_bias_m_read_readvariableop7
3savev2_adam_conv2d_107_kernel_v_read_readvariableop5
1savev2_adam_conv2d_107_bias_v_read_readvariableop7
3savev2_adam_conv2d_108_kernel_v_read_readvariableop5
1savev2_adam_conv2d_108_bias_v_read_readvariableop7
3savev2_adam_conv2d_109_kernel_v_read_readvariableop5
1savev2_adam_conv2d_109_bias_v_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop5
1savev2_adam_dense_57_kernel_v_read_readvariableop3
/savev2_adam_dense_57_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_107_kernel_read_readvariableop*savev2_conv2d_107_bias_read_readvariableop,savev2_conv2d_108_kernel_read_readvariableop*savev2_conv2d_108_bias_read_readvariableop,savev2_conv2d_109_kernel_read_readvariableop*savev2_conv2d_109_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_107_kernel_m_read_readvariableop1savev2_adam_conv2d_107_bias_m_read_readvariableop3savev2_adam_conv2d_108_kernel_m_read_readvariableop1savev2_adam_conv2d_108_bias_m_read_readvariableop3savev2_adam_conv2d_109_kernel_m_read_readvariableop1savev2_adam_conv2d_109_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop1savev2_adam_dense_57_kernel_m_read_readvariableop/savev2_adam_dense_57_bias_m_read_readvariableop3savev2_adam_conv2d_107_kernel_v_read_readvariableop1savev2_adam_conv2d_107_bias_v_read_readvariableop3savev2_adam_conv2d_108_kernel_v_read_readvariableop1savev2_adam_conv2d_108_bias_v_read_readvariableop3savev2_adam_conv2d_109_kernel_v_read_readvariableop1savev2_adam_conv2d_109_bias_v_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableop1savev2_adam_dense_57_kernel_v_read_readvariableop/savev2_adam_dense_57_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+				2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1?
NoOpNoOp^MergeV2Checkpoints*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : : @:@:
?#?:?:	?>:>: : : : : :::: : : : : : :  : : @:@:
?#?:?:	?>:>: : :  : : @:@:
?#?:?:	?>:>: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
?#?:!

_output_shapes	
:?:%	!

_output_shapes
:	?>: 


_output_shapes
:>:
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
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
?#?:!

_output_shapes	
:?:%!

_output_shapes
:	?>:  

_output_shapes
:>:,!(
&
_output_shapes
: : "

_output_shapes
: :,#(
&
_output_shapes
:  : $

_output_shapes
: :,%(
&
_output_shapes
: @: &

_output_shapes
:@:&'"
 
_output_shapes
:
?#?:!(

_output_shapes	
:?:%)!

_output_shapes
:	?>: *

_output_shapes
:>:+

_output_shapes
: 
?
?
E__inference_conv2d_108_layer_call_and_return_conditional_losses_90400

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????/" 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????/" 2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1$ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????1$ 
 
_user_specified_nameinputs
?
?
-__inference_sequential_28_layer_call_fn_89908

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: #
	unknown_4:  
	unknown_5: #
	unknown_6: @
	unknown_7:@
	unknown_8:
?#?
	unknown_9:	?

unknown_10:	?>

unknown_11:>
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_28_layer_call_and_return_conditional_losses_893362
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:?????????dK: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
?

?
-__inference_sequential_28_layer_call_fn_89877

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
?#?
	unknown_6:	?
	unknown_7:	?>
	unknown_8:>
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_28_layer_call_and_return_conditional_losses_888222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dK: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
??
?
H__inference_sequential_28_layer_call_and_return_conditional_losses_89819
random_zoom_4_inputD
6random_zoom_4_stateful_uniform_rngreadandskip_resource:	H
:random_rotation_2_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_5_stateful_uniform_rngreadandskip_resource:	*
conv2d_107_89788: 
conv2d_107_89790: *
conv2d_108_89794:  
conv2d_108_89796: *
conv2d_109_89800: @
conv2d_109_89802:@"
dense_56_89807:
?#?
dense_56_89809:	?!
dense_57_89813:	?>
dense_57_89815:>
identity??"conv2d_107/StatefulPartitionedCall?"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall?"dropout_25/StatefulPartitionedCall?1random_rotation_2/stateful_uniform/RngReadAndSkip?-random_zoom_4/stateful_uniform/RngReadAndSkip?-random_zoom_5/stateful_uniform/RngReadAndSkipm
random_zoom_4/ShapeShaperandom_zoom_4_input*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
$random_zoom_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$random_zoom_4/stateful_uniform/Const?
#random_zoom_4/stateful_uniform/ProdProd-random_zoom_4/stateful_uniform/shape:output:0-random_zoom_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/stateful_uniform/Prod?
%random_zoom_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/stateful_uniform/Cast/x?
%random_zoom_4/stateful_uniform/Cast_1Cast,random_zoom_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%random_zoom_4/stateful_uniform/Cast_1?
-random_zoom_4/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_4_stateful_uniform_rngreadandskip_resource.random_zoom_4/stateful_uniform/Cast/x:output:0)random_zoom_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:2/
-random_zoom_4/stateful_uniform/RngReadAndSkip?
2random_zoom_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2random_zoom_4/stateful_uniform/strided_slice/stack?
4random_zoom_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice/stack_1?
4random_zoom_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice/stack_2?
,random_zoom_4/stateful_uniform/strided_sliceStridedSlice5random_zoom_4/stateful_uniform/RngReadAndSkip:value:0;random_zoom_4/stateful_uniform/strided_slice/stack:output:0=random_zoom_4/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2.
,random_zoom_4/stateful_uniform/strided_slice?
&random_zoom_4/stateful_uniform/BitcastBitcast5random_zoom_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom_4/stateful_uniform/Bitcast?
4random_zoom_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_4/stateful_uniform/strided_slice_1/stack?
6random_zoom_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_4/stateful_uniform/strided_slice_1/stack_1?
6random_zoom_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_4/stateful_uniform/strided_slice_1/stack_2?
.random_zoom_4/stateful_uniform/strided_slice_1StridedSlice5random_zoom_4/stateful_uniform/RngReadAndSkip:value:0=random_zoom_4/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_4/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:20
.random_zoom_4/stateful_uniform/strided_slice_1?
(random_zoom_4/stateful_uniform/Bitcast_1Bitcast7random_zoom_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02*
(random_zoom_4/stateful_uniform/Bitcast_1?
;random_zoom_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2=
;random_zoom_4/stateful_uniform/StatelessRandomUniformV2/alg?
7random_zoom_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_4/stateful_uniform/shape:output:01random_zoom_4/stateful_uniform/Bitcast_1:output:0/random_zoom_4/stateful_uniform/Bitcast:output:0Drandom_zoom_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????29
7random_zoom_4/stateful_uniform/StatelessRandomUniformV2?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul@random_zoom_4/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concat?
random_zoom_4/transform/ShapeShaperandom_zoom_4_input*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_zoom_4_input)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
&random_contrast_2/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 2(
&random_contrast_2/random_uniform/shape?
$random_contrast_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2&
$random_contrast_2/random_uniform/min?
$random_contrast_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_contrast_2/random_uniform/max?
.random_contrast_2/random_uniform/RandomUniformRandomUniform/random_contrast_2/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype020
.random_contrast_2/random_uniform/RandomUniform?
$random_contrast_2/random_uniform/subSub-random_contrast_2/random_uniform/max:output:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/sub?
$random_contrast_2/random_uniform/mulMul7random_contrast_2/random_uniform/RandomUniform:output:0(random_contrast_2/random_uniform/sub:z:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/mul?
 random_contrast_2/random_uniformAdd(random_contrast_2/random_uniform/mul:z:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_contrast_2/random_uniform?
!random_contrast_2/adjust_contrastAdjustContrastv2Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0$random_contrast_2/random_uniform:z:0*/
_output_shapes
:?????????dK2#
!random_contrast_2/adjust_contrast?
*random_contrast_2/adjust_contrast/IdentityIdentity*random_contrast_2/adjust_contrast:output:0*
T0*/
_output_shapes
:?????????dK2,
*random_contrast_2/adjust_contrast/Identity?
random_rotation_2/ShapeShape3random_contrast_2/adjust_contrast/Identity:output:0*
T0*
_output_shapes
:2
random_rotation_2/Shape?
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack?
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1?
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2?
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice?
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack?
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1?
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2?
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1?
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast?
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack?
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1?
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2?
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2?
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1?
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape?
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_2/stateful_uniform/min?
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_2/stateful_uniform/max?
(random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_2/stateful_uniform/Const?
'random_rotation_2/stateful_uniform/ProdProd1random_rotation_2/stateful_uniform/shape:output:01random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/stateful_uniform/Prod?
)random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_2/stateful_uniform/Cast/x?
)random_rotation_2/stateful_uniform/Cast_1Cast0random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_2/stateful_uniform/Cast_1?
1random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_2_stateful_uniform_rngreadandskip_resource2random_rotation_2/stateful_uniform/Cast/x:output:0-random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_2/stateful_uniform/RngReadAndSkip?
6random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_2/stateful_uniform/strided_slice/stack?
8random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice/stack_1?
8random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice/stack_2?
0random_rotation_2/stateful_uniform/strided_sliceStridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0?random_rotation_2/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_2/stateful_uniform/strided_slice?
*random_rotation_2/stateful_uniform/BitcastBitcast9random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_2/stateful_uniform/Bitcast?
8random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_2/stateful_uniform/strided_slice_1/stack?
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1?
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2?
2random_rotation_2/stateful_uniform/strided_slice_1StridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_2/stateful_uniform/strided_slice_1?
,random_rotation_2/stateful_uniform/Bitcast_1Bitcast;random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_2/stateful_uniform/Bitcast_1?
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg?
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_2/stateful_uniform/shape:output:05random_rotation_2/stateful_uniform/Bitcast_1:output:03random_rotation_2/stateful_uniform/Bitcast:output:0Hrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????2=
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2?
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/sub?
&random_rotation_2/stateful_uniform/mulMulDrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_2/stateful_uniform/mul?
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_2/stateful_uniform?
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_2/rotation_matrix/sub/y?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/sub?
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Cos?
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_1/y?
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1?
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/mul?
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Sin?
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_2/y?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2?
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_1?
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_3?
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_4?
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/y?
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_2/rotation_matrix/truediv?
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_5/y?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5?
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_1?
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_6/y?
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6?
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_2?
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_1?
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_7/y?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7?
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_3?
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/add?
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_8?
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/y?
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_2/rotation_matrix/truediv_1?
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/Shape?
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stack?
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1?
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2?
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_slice?
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_2?
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stack?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1?
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_2?
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stack?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2?
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Neg?
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stack?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3?
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_3?
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stack?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4?
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_3?
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stack?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5?
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stack?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6?
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/y?
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mul?
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_2/rotation_matrix/zeros/Less/y?
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/Less?
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1?
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packed?
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const?
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/zeros?
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axis?
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_2/rotation_matrix/concat?
!random_rotation_2/transform/ShapeShape3random_contrast_2/adjust_contrast/Identity:output:0*
T0*
_output_shapes
:2#
!random_rotation_2/transform/Shape?
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stack?
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1?
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2?
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice?
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_value?
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV33random_contrast_2/adjust_contrast/Identity:output:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3?
random_zoom_5/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_5/Shape?
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stack?
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1?
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2?
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice?
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stack?
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1?
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2?
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1?
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast?
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stack?
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1?
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2?
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2?
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1?
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1?
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shape?
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2$
"random_zoom_5/stateful_uniform/min?
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?̌?2$
"random_zoom_5/stateful_uniform/max?
$random_zoom_5/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$random_zoom_5/stateful_uniform/Const?
#random_zoom_5/stateful_uniform/ProdProd-random_zoom_5/stateful_uniform/shape:output:0-random_zoom_5/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/stateful_uniform/Prod?
%random_zoom_5/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/stateful_uniform/Cast/x?
%random_zoom_5/stateful_uniform/Cast_1Cast,random_zoom_5/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%random_zoom_5/stateful_uniform/Cast_1?
-random_zoom_5/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_5_stateful_uniform_rngreadandskip_resource.random_zoom_5/stateful_uniform/Cast/x:output:0)random_zoom_5/stateful_uniform/Cast_1:y:0*
_output_shapes
:2/
-random_zoom_5/stateful_uniform/RngReadAndSkip?
2random_zoom_5/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2random_zoom_5/stateful_uniform/strided_slice/stack?
4random_zoom_5/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice/stack_1?
4random_zoom_5/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice/stack_2?
,random_zoom_5/stateful_uniform/strided_sliceStridedSlice5random_zoom_5/stateful_uniform/RngReadAndSkip:value:0;random_zoom_5/stateful_uniform/strided_slice/stack:output:0=random_zoom_5/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_5/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2.
,random_zoom_5/stateful_uniform/strided_slice?
&random_zoom_5/stateful_uniform/BitcastBitcast5random_zoom_5/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom_5/stateful_uniform/Bitcast?
4random_zoom_5/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_5/stateful_uniform/strided_slice_1/stack?
6random_zoom_5/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_5/stateful_uniform/strided_slice_1/stack_1?
6random_zoom_5/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_5/stateful_uniform/strided_slice_1/stack_2?
.random_zoom_5/stateful_uniform/strided_slice_1StridedSlice5random_zoom_5/stateful_uniform/RngReadAndSkip:value:0=random_zoom_5/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_5/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_5/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:20
.random_zoom_5/stateful_uniform/strided_slice_1?
(random_zoom_5/stateful_uniform/Bitcast_1Bitcast7random_zoom_5/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02*
(random_zoom_5/stateful_uniform/Bitcast_1?
;random_zoom_5/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2=
;random_zoom_5/stateful_uniform/StatelessRandomUniformV2/alg?
7random_zoom_5/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_5/stateful_uniform/shape:output:01random_zoom_5/stateful_uniform/Bitcast_1:output:0/random_zoom_5/stateful_uniform/Bitcast:output:0Drandom_zoom_5/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????29
7random_zoom_5/stateful_uniform/StatelessRandomUniformV2?
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/sub?
"random_zoom_5/stateful_uniform/mulMul@random_zoom_5/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_5/stateful_uniform/mul?
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axis?
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_5/concat?
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape?
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stack?
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1?
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2?
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_slice?
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_5/zoom_matrix/sub/y?
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/sub?
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y?
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truediv?
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stack?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1?
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_1/x?
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_1?
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_5/zoom_matrix/mul?
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_2/y?
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2?
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/y?
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1?
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stack?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2?
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_3/x?
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_3?
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/mul_1?
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stack?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3?
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y?
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mul?
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_5/zoom_matrix/zeros/Less/y?
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/Less?
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1?
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packed?
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/Const?
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/zeros?
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/y?
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mul?
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y?
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/Less?
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1?
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packed?
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Const?
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_1?
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stack?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4?
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/y?
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mul?
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y?
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/Less?
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1?
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packed?
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Const?
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_2?
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axis?
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_5/zoom_matrix/concat?
random_zoom_5/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape?
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack?
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1?
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2?
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_slice?
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_value?
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:?????????dK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3m
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMulGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/add?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCallrescaling_5/add:z:0conv2d_107_89788conv2d_107_89790*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bI *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_887292$
"conv2d_107/StatefulPartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_886772#
!max_pooling2d_107/PartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_107/PartitionedCall:output:0conv2d_108_89794conv2d_108_89796*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????/" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_887472$
"conv2d_108/StatefulPartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_886892#
!max_pooling2d_108/PartitionedCall?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_89800conv2d_109_89802*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_887652$
"conv2d_109/StatefulPartitionedCall?
!max_pooling2d_109/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_887012#
!max_pooling2d_109/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall*max_pooling2d_109/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_887782
flatten_28/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_56_89807dense_56_89809*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_887912"
 dense_56/StatefulPartitionedCall?
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_888752$
"dropout_25/StatefulPartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_57_89813dense_57_89815*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_888152"
 dense_57/StatefulPartitionedCall?
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity?
NoOpNoOp#^conv2d_107/StatefulPartitionedCall#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall2^random_rotation_2/stateful_uniform/RngReadAndSkip.^random_zoom_4/stateful_uniform/RngReadAndSkip.^random_zoom_5/stateful_uniform/RngReadAndSkip*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:?????????dK: : : : : : : : : : : : : 2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2f
1random_rotation_2/stateful_uniform/RngReadAndSkip1random_rotation_2/stateful_uniform/RngReadAndSkip2^
-random_zoom_4/stateful_uniform/RngReadAndSkip-random_zoom_4/stateful_uniform/RngReadAndSkip2^
-random_zoom_5/stateful_uniform/RngReadAndSkip-random_zoom_5/stateful_uniform/RngReadAndSkip:d `
/
_output_shapes
:?????????dK
-
_user_specified_namerandom_zoom_4_input
?
?
*__inference_conv2d_107_layer_call_fn_90369

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bI *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_887292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????bI 2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dK: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
?
?
*__inference_conv2d_108_layer_call_fn_90389

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????/" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_887472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????/" 2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1$ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????1$ 
 
_user_specified_nameinputs
?
?
E__inference_conv2d_109_layer_call_and_return_conditional_losses_90420

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
a
E__inference_flatten_28_layer_call_and_return_conditional_losses_88778

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????#2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
@:W S
/
_output_shapes
:?????????
@
 
_user_specified_nameinputs
?

?
C__inference_dense_57_layer_call_and_return_conditional_losses_88815

inputs1
matmul_readvariableop_resource:	?>-
biasadd_readvariableop_resource:>
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:>*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????>2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_28_layer_call_fn_89396
random_zoom_4_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: #
	unknown_4:  
	unknown_5: #
	unknown_6: @
	unknown_7:@
	unknown_8:
?#?
	unknown_9:	?

unknown_10:	?>

unknown_11:>
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_28_layer_call_and_return_conditional_losses_893362
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:?????????dK: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????dK
-
_user_specified_namerandom_zoom_4_input
?

?
#__inference_signature_wrapper_89852
random_zoom_4_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
?#?
	unknown_6:	?
	unknown_7:	?>
	unknown_8:>
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_886712
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????>2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dK: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????dK
-
_user_specified_namerandom_zoom_4_input
?
F
*__inference_flatten_28_layer_call_fn_90425

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
:??????????#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_887782
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
@:W S
/
_output_shapes
:?????????
@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_107_layer_call_and_return_conditional_losses_90380

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????bI 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????bI 2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
?A
?
H__inference_sequential_28_layer_call_and_return_conditional_losses_89957

inputsC
)conv2d_107_conv2d_readvariableop_resource: 8
*conv2d_107_biasadd_readvariableop_resource: C
)conv2d_108_conv2d_readvariableop_resource:  8
*conv2d_108_biasadd_readvariableop_resource: C
)conv2d_109_conv2d_readvariableop_resource: @8
*conv2d_109_biasadd_readvariableop_resource:@;
'dense_56_matmul_readvariableop_resource:
?#?7
(dense_56_biasadd_readvariableop_resource:	?:
'dense_57_matmul_readvariableop_resource:	?>6
(dense_57_biasadd_readvariableop_resource:>
identity??!conv2d_107/BiasAdd/ReadVariableOp? conv2d_107/Conv2D/ReadVariableOp?!conv2d_108/BiasAdd/ReadVariableOp? conv2d_108/Conv2D/ReadVariableOp?!conv2d_109/BiasAdd/ReadVariableOp? conv2d_109/Conv2D/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOpm
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMulinputsrescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????dK2
rescaling_5/add?
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_107/Conv2D/ReadVariableOp?
conv2d_107/Conv2DConv2Drescaling_5/add:z:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI *
paddingVALID*
strides
2
conv2d_107/Conv2D?
!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_107/BiasAdd/ReadVariableOp?
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bI 2
conv2d_107/BiasAdd?
conv2d_107/ReluReluconv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bI 2
conv2d_107/Relu?
max_pooling2d_107/MaxPoolMaxPoolconv2d_107/Relu:activations:0*/
_output_shapes
:?????????1$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_107/MaxPool?
 conv2d_108/Conv2D/ReadVariableOpReadVariableOp)conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_108/Conv2D/ReadVariableOp?
conv2d_108/Conv2DConv2D"max_pooling2d_107/MaxPool:output:0(conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" *
paddingVALID*
strides
2
conv2d_108/Conv2D?
!conv2d_108/BiasAdd/ReadVariableOpReadVariableOp*conv2d_108_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_108/BiasAdd/ReadVariableOp?
conv2d_108/BiasAddBiasAddconv2d_108/Conv2D:output:0)conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????/" 2
conv2d_108/BiasAdd?
conv2d_108/ReluReluconv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????/" 2
conv2d_108/Relu?
max_pooling2d_108/MaxPoolMaxPoolconv2d_108/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_108/MaxPool?
 conv2d_109/Conv2D/ReadVariableOpReadVariableOp)conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_109/Conv2D/ReadVariableOp?
conv2d_109/Conv2DConv2D"max_pooling2d_108/MaxPool:output:0(conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_109/Conv2D?
!conv2d_109/BiasAdd/ReadVariableOpReadVariableOp*conv2d_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_109/BiasAdd/ReadVariableOp?
conv2d_109/BiasAddBiasAddconv2d_109/Conv2D:output:0)conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_109/BiasAdd?
conv2d_109/ReluReluconv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_109/Relu?
max_pooling2d_109/MaxPoolMaxPoolconv2d_109/Relu:activations:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_109/MaxPoolu
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_28/Const?
flatten_28/ReshapeReshape"max_pooling2d_109/MaxPool:output:0flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????#2
flatten_28/Reshape?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource* 
_output_shapes
:
?#?*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMulflatten_28/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_56/BiasAddt
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_56/Relu?
dropout_25/IdentityIdentitydense_56/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_25/Identity?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMuldropout_25/Identity:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:>*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
dense_57/BiasAdd|
dense_57/SoftmaxSoftmaxdense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????>2
dense_57/Softmaxu
IdentityIdentitydense_57/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????>2

Identity?
NoOpNoOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp"^conv2d_108/BiasAdd/ReadVariableOp!^conv2d_108/Conv2D/ReadVariableOp"^conv2d_109/BiasAdd/ReadVariableOp!^conv2d_109/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dK: : : : : : : : : : 2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp2F
!conv2d_108/BiasAdd/ReadVariableOp!conv2d_108/BiasAdd/ReadVariableOp2D
 conv2d_108/Conv2D/ReadVariableOp conv2d_108/Conv2D/ReadVariableOp2F
!conv2d_109/BiasAdd/ReadVariableOp!conv2d_109/BiasAdd/ReadVariableOp2D
 conv2d_109/Conv2D/ReadVariableOp conv2d_109/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????dK
 
_user_specified_nameinputs
?
?
E__inference_conv2d_109_layer_call_and_return_conditional_losses_88765

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_107_layer_call_fn_88683

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_886772
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_25_layer_call_and_return_conditional_losses_90478

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_108_layer_call_fn_88695

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_886892
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
[
random_zoom_4_inputD
%serving_default_random_zoom_4_input:0?????????dK<
dense_570
StatefulPartitionedCall:0?????????>tensorflow/serving/predict:??
?e
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer_with_weights-2

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer_with_weights-4
layer-14
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?a
_tf_keras_sequential?a{"name": "sequential_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 75, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomContrast", "config": {"name": "random_contrast_2", "trainable": true, "dtype": "float32", "factor": 0.2, "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0.1, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "Rescaling", "config": {"name": "rescaling_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 75, 3]}, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d_107", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_108", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_109", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_109", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_28", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 62, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 26, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 75, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 100, 75, 3]}, "float32", "random_zoom_4_input"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 75, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}, "shared_object_id": 0}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 1}, {"class_name": "RandomContrast", "config": {"name": "random_contrast_2", "trainable": true, "dtype": "float32", "factor": 0.2, "seed": null}, "shared_object_id": 2}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 3}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0.1, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 4}, {"class_name": "Rescaling", "config": {"name": "rescaling_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 75, 3]}, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "conv2d_107", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 9}, {"class_name": "Conv2D", "config": {"name": "conv2d_108", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 13}, {"class_name": "Conv2D", "config": {"name": "conv2d_109", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_109", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 17}, {"class_name": "Flatten", "config": {"name": "flatten_28", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21}, {"class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "shared_object_id": 22}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 62, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 27}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 28}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
_rng
	keras_api"?
_tf_keras_layer?{"name": "random_zoom_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 1}
?
	keras_api"?
_tf_keras_layer?{"name": "random_contrast_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomContrast", "config": {"name": "random_contrast_2", "trainable": true, "dtype": "float32", "factor": 0.2, "seed": null}, "shared_object_id": 2}
?
_rng
	keras_api"?
_tf_keras_layer?{"name": "random_rotation_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 3}
?
_rng
	keras_api"?
_tf_keras_layer?{"name": "random_zoom_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0.1, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 4}
?
	keras_api"?
_tf_keras_layer?{"name": "rescaling_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 75, 3]}, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "rescaling_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 75, 3]}, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 5}
?


kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_107", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_107", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 75, 3]}}
?
$	variables
%regularization_losses
&trainable_variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_107", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 30}}
?


(kernel
)bias
*	variables
+regularization_losses
,trainable_variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_108", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_108", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 49, 36, 32]}}
?
.	variables
/regularization_losses
0trainable_variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_108", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 32}}
?


2kernel
3bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_109", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_109", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 23, 17, 32]}}
?
8	variables
9regularization_losses
:trainable_variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_109", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_109", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 34}}
?
<	variables
=regularization_losses
>trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_28", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 35}}
?

@kernel
Abias
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4480}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4480]}}
?
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_25", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "shared_object_id": 22}
?

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 62, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem?m?(m?)m?2m?3m?@m?Am?Jm?Km?v?v?(v?)v?2v?3v?@v?Av?Jv?Kv?"
	optimizer
f
0
1
(2
)3
24
35
@6
A7
J8
K9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
(2
)3
24
35
@6
A7
J8
K9"
trackable_list_wrapper
?
Umetrics
	variables
Vlayer_metrics
regularization_losses
trainable_variables

Wlayers
Xlayer_regularization_losses
Ynon_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
.
Z
_state_var"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
.
[
_state_var"
_generic_user_object
"
_generic_user_object
.
\
_state_var"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
+:) 2conv2d_107/kernel
: 2conv2d_107/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
]metrics
 	variables
^layer_metrics
!regularization_losses
"trainable_variables

_layers
`layer_regularization_losses
anon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
bmetrics
$	variables
clayer_metrics
%regularization_losses
&trainable_variables

dlayers
elayer_regularization_losses
fnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_108/kernel
: 2conv2d_108/bias
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
gmetrics
*	variables
hlayer_metrics
+regularization_losses
,trainable_variables

ilayers
jlayer_regularization_losses
knon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
lmetrics
.	variables
mlayer_metrics
/regularization_losses
0trainable_variables

nlayers
olayer_regularization_losses
pnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_109/kernel
:@2conv2d_109/bias
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
?
qmetrics
4	variables
rlayer_metrics
5regularization_losses
6trainable_variables

slayers
tlayer_regularization_losses
unon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
vmetrics
8	variables
wlayer_metrics
9regularization_losses
:trainable_variables

xlayers
ylayer_regularization_losses
znon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
{metrics
<	variables
|layer_metrics
=regularization_losses
>trainable_variables

}layers
~layer_regularization_losses
non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
?#?2dense_56/kernel
:?2dense_56/bias
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
?
?metrics
B	variables
?layer_metrics
Cregularization_losses
Dtrainable_variables
?layers
 ?layer_regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
F	variables
?layer_metrics
Gregularization_losses
Htrainable_variables
?layers
 ?layer_regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?>2dense_57/kernel
:>2dense_57/bias
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
?metrics
L	variables
?layer_metrics
Mregularization_losses
Ntrainable_variables
?layers
 ?layer_regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
?
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
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:	2Variable
:	2Variable
:	2Variable
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 38}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 28}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
0:. 2Adam/conv2d_107/kernel/m
":  2Adam/conv2d_107/bias/m
0:.  2Adam/conv2d_108/kernel/m
":  2Adam/conv2d_108/bias/m
0:. @2Adam/conv2d_109/kernel/m
": @2Adam/conv2d_109/bias/m
(:&
?#?2Adam/dense_56/kernel/m
!:?2Adam/dense_56/bias/m
':%	?>2Adam/dense_57/kernel/m
 :>2Adam/dense_57/bias/m
0:. 2Adam/conv2d_107/kernel/v
":  2Adam/conv2d_107/bias/v
0:.  2Adam/conv2d_108/kernel/v
":  2Adam/conv2d_108/bias/v
0:. @2Adam/conv2d_109/kernel/v
": @2Adam/conv2d_109/bias/v
(:&
?#?2Adam/dense_56/kernel/v
!:?2Adam/dense_56/bias/v
':%	?>2Adam/dense_57/kernel/v
 :>2Adam/dense_57/bias/v
?2?
 __inference__wrapped_model_88671?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *:?7
5?2
random_zoom_4_input?????????dK
?2?
-__inference_sequential_28_layer_call_fn_88845
-__inference_sequential_28_layer_call_fn_89877
-__inference_sequential_28_layer_call_fn_89908
-__inference_sequential_28_layer_call_fn_89396?
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
H__inference_sequential_28_layer_call_and_return_conditional_losses_89957
H__inference_sequential_28_layer_call_and_return_conditional_losses_90360
H__inference_sequential_28_layer_call_and_return_conditional_losses_89434
H__inference_sequential_28_layer_call_and_return_conditional_losses_89819?
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
?2?
*__inference_conv2d_107_layer_call_fn_90369?
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
E__inference_conv2d_107_layer_call_and_return_conditional_losses_90380?
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
?2?
1__inference_max_pooling2d_107_layer_call_fn_88683?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_88677?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_108_layer_call_fn_90389?
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
E__inference_conv2d_108_layer_call_and_return_conditional_losses_90400?
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
?2?
1__inference_max_pooling2d_108_layer_call_fn_88695?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_88689?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_109_layer_call_fn_90409?
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
E__inference_conv2d_109_layer_call_and_return_conditional_losses_90420?
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
?2?
1__inference_max_pooling2d_109_layer_call_fn_88707?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_88701?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_flatten_28_layer_call_fn_90425?
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
E__inference_flatten_28_layer_call_and_return_conditional_losses_90431?
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
(__inference_dense_56_layer_call_fn_90440?
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
C__inference_dense_56_layer_call_and_return_conditional_losses_90451?
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
?2?
*__inference_dropout_25_layer_call_fn_90456
*__inference_dropout_25_layer_call_fn_90461?
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
E__inference_dropout_25_layer_call_and_return_conditional_losses_90466
E__inference_dropout_25_layer_call_and_return_conditional_losses_90478?
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
?2?
(__inference_dense_57_layer_call_fn_90487?
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
C__inference_dense_57_layer_call_and_return_conditional_losses_90498?
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
?B?
#__inference_signature_wrapper_89852random_zoom_4_input"?
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
 ?
 __inference__wrapped_model_88671?
()23@AJKD?A
:?7
5?2
random_zoom_4_input?????????dK
? "3?0
.
dense_57"?
dense_57?????????>?
E__inference_conv2d_107_layer_call_and_return_conditional_losses_90380l7?4
-?*
(?%
inputs?????????dK
? "-?*
#? 
0?????????bI 
? ?
*__inference_conv2d_107_layer_call_fn_90369_7?4
-?*
(?%
inputs?????????dK
? " ??????????bI ?
E__inference_conv2d_108_layer_call_and_return_conditional_losses_90400l()7?4
-?*
(?%
inputs?????????1$ 
? "-?*
#? 
0?????????/" 
? ?
*__inference_conv2d_108_layer_call_fn_90389_()7?4
-?*
(?%
inputs?????????1$ 
? " ??????????/" ?
E__inference_conv2d_109_layer_call_and_return_conditional_losses_90420l237?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_109_layer_call_fn_90409_237?4
-?*
(?%
inputs????????? 
? " ??????????@?
C__inference_dense_56_layer_call_and_return_conditional_losses_90451^@A0?-
&?#
!?
inputs??????????#
? "&?#
?
0??????????
? }
(__inference_dense_56_layer_call_fn_90440Q@A0?-
&?#
!?
inputs??????????#
? "????????????
C__inference_dense_57_layer_call_and_return_conditional_losses_90498]JK0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????>
? |
(__inference_dense_57_layer_call_fn_90487PJK0?-
&?#
!?
inputs??????????
? "??????????>?
E__inference_dropout_25_layer_call_and_return_conditional_losses_90466^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_25_layer_call_and_return_conditional_losses_90478^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_25_layer_call_fn_90456Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_25_layer_call_fn_90461Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_flatten_28_layer_call_and_return_conditional_losses_90431a7?4
-?*
(?%
inputs?????????
@
? "&?#
?
0??????????#
? ?
*__inference_flatten_28_layer_call_fn_90425T7?4
-?*
(?%
inputs?????????
@
? "???????????#?
L__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_88677?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_107_layer_call_fn_88683?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_88689?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_108_layer_call_fn_88695?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_88701?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_109_layer_call_fn_88707?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_28_layer_call_and_return_conditional_losses_89434?
()23@AJKL?I
B??
5?2
random_zoom_4_input?????????dK
p 

 
? "%?"
?
0?????????>
? ?
H__inference_sequential_28_layer_call_and_return_conditional_losses_89819?Z[\()23@AJKL?I
B??
5?2
random_zoom_4_input?????????dK
p

 
? "%?"
?
0?????????>
? ?
H__inference_sequential_28_layer_call_and_return_conditional_losses_89957t
()23@AJK??<
5?2
(?%
inputs?????????dK
p 

 
? "%?"
?
0?????????>
? ?
H__inference_sequential_28_layer_call_and_return_conditional_losses_90360wZ[\()23@AJK??<
5?2
(?%
inputs?????????dK
p

 
? "%?"
?
0?????????>
? ?
-__inference_sequential_28_layer_call_fn_88845t
()23@AJKL?I
B??
5?2
random_zoom_4_input?????????dK
p 

 
? "??????????>?
-__inference_sequential_28_layer_call_fn_89396wZ[\()23@AJKL?I
B??
5?2
random_zoom_4_input?????????dK
p

 
? "??????????>?
-__inference_sequential_28_layer_call_fn_89877g
()23@AJK??<
5?2
(?%
inputs?????????dK
p 

 
? "??????????>?
-__inference_sequential_28_layer_call_fn_89908jZ[\()23@AJK??<
5?2
(?%
inputs?????????dK
p

 
? "??????????>?
#__inference_signature_wrapper_89852?
()23@AJK[?X
? 
Q?N
L
random_zoom_4_input5?2
random_zoom_4_input?????????dK"3?0
.
dense_57"?
dense_57?????????>