Κό
Ζ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Α
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
executor_typestring ¨
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.12.0-dev202211042v1.12.1-84267-ge0d5221071b8
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
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
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
z
output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameoutput_layer/bias
s
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
_output_shapes
:*
dtype0

output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameoutput_layer/kernel
|
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes
:	*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	 *
dtype0
’
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0

batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
z
block2_Conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameblock2_Conv2/bias
s
%block2_Conv2/bias/Read/ReadVariableOpReadVariableOpblock2_Conv2/bias*
_output_shapes
: *
dtype0

block2_Conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_nameblock2_Conv2/kernel

'block2_Conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_Conv2/kernel*"
_output_shapes
:  *
dtype0
z
block2_Conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameblock2_Conv1/bias
s
%block2_Conv1/bias/Read/ReadVariableOpReadVariableOpblock2_Conv1/bias*
_output_shapes
: *
dtype0

block2_Conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_nameblock2_Conv1/kernel

'block2_Conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_Conv1/kernel*"
_output_shapes
:  *
dtype0

block2_residual/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameblock2_residual/bias
y
(block2_residual/bias/Read/ReadVariableOpReadVariableOpblock2_residual/bias*
_output_shapes
: *
dtype0

block2_residual/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameblock2_residual/kernel

*block2_residual/kernel/Read/ReadVariableOpReadVariableOpblock2_residual/kernel*"
_output_shapes
:@ *
dtype0

#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization/moving_variance

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:@*
dtype0

batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!batch_normalization/moving_mean

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namebatch_normalization/beta

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:@*
dtype0

batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namebatch_normalization/gamma

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:@*
dtype0
z
block1_Conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_Conv2/bias
s
%block1_Conv2/bias/Read/ReadVariableOpReadVariableOpblock1_Conv2/bias*
_output_shapes
:@*
dtype0

block1_Conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_Conv2/kernel

'block1_Conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_Conv2/kernel*"
_output_shapes
:@@*
dtype0
z
block1_Conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_Conv1/bias
s
%block1_Conv1/bias/Read/ReadVariableOpReadVariableOpblock1_Conv1/bias*
_output_shapes
:@*
dtype0

block1_Conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_Conv1/kernel

'block1_Conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_Conv1/kernel*"
_output_shapes
:@@*
dtype0

block1_residual/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameblock1_residual/bias
y
(block1_residual/bias/Read/ReadVariableOpReadVariableOpblock1_residual/bias*
_output_shapes
:@*
dtype0

block1_residual/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameblock1_residual/kernel

*block1_residual/kernel/Read/ReadVariableOpReadVariableOpblock1_residual/kernel*#
_output_shapes
:@*
dtype0

serving_default_input_layerPlaceholder*,
_output_shapes
:?????????<*
dtype0*!
shape:?????????<
£
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layerblock1_residual/kernelblock1_residual/biasblock1_Conv1/kernelblock1_Conv1/biasblock1_Conv2/kernelblock1_Conv2/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betablock2_residual/kernelblock2_residual/biasblock2_Conv1/kernelblock2_Conv1/biasblock2_Conv2/kernelblock2_Conv2/bias%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betadense/kernel
dense/biasoutput_layer/kerneloutput_layer/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_signature_wrapper_1912

NoOpNoOp
αm
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*m
valuemBm Bm
¦
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
Θ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op*
Θ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias
 +_jit_compiled_convolution_op*
Θ
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op*

5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 

;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
Υ
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance*
Θ
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias
 T_jit_compiled_convolution_op*
Θ
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op*
Θ
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias
 f_jit_compiled_convolution_op*

g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 

m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses* 
Υ
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
yaxis
	zgamma
{beta
|moving_mean
}moving_variance*
"
~	keras_api
_defun_call* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
Ύ
 0
!1
)2
*3
24
35
H6
I7
J8
K9
R10
S11
[12
\13
d14
e15
z16
{17
|18
}19
20
21
22
23*

 0
!1
)2
*3
24
35
H6
I7
R8
S9
[10
\11
d12
e13
z14
{15
16
17
18
19*
* 
΅
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
S

_variables
_iterations
_learning_rate
 _update_step_xla*

‘serving_default* 

 0
!1*

 0
!1*
* 

’non_trainable_variables
£layers
€metrics
 ₯layer_regularization_losses
¦layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

§trace_0* 

¨trace_0* 
f`
VARIABLE_VALUEblock1_residual/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEblock1_residual/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

)0
*1*

)0
*1*
* 

©non_trainable_variables
ͺlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

?trace_0* 

―trace_0* 
c]
VARIABLE_VALUEblock1_Conv1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock1_Conv1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

20
31*

20
31*
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
΄layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

΅trace_0* 

Άtrace_0* 
c]
VARIABLE_VALUEblock1_Conv2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock1_Conv2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

·non_trainable_variables
Έlayers
Ήmetrics
 Ίlayer_regularization_losses
»layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

Όtrace_0* 

½trace_0* 
* 
* 
* 

Ύnon_trainable_variables
Ώlayers
ΐmetrics
 Αlayer_regularization_losses
Βlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

Γtrace_0* 

Δtrace_0* 
 
H0
I1
J2
K3*

H0
I1*
* 

Εnon_trainable_variables
Ζlayers
Ηmetrics
 Θlayer_regularization_losses
Ιlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

Κtrace_0
Λtrace_1* 

Μtrace_0
Νtrace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

R0
S1*

R0
S1*
* 

Ξnon_trainable_variables
Οlayers
Πmetrics
 Ρlayer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

Σtrace_0* 

Τtrace_0* 
f`
VARIABLE_VALUEblock2_residual/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEblock2_residual/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

[0
\1*

[0
\1*
* 

Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

Ϊtrace_0* 

Ϋtrace_0* 
c]
VARIABLE_VALUEblock2_Conv1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock2_Conv1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

d0
e1*

d0
e1*
* 

άnon_trainable_variables
έlayers
ήmetrics
 ίlayer_regularization_losses
ΰlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

αtrace_0* 

βtrace_0* 
c]
VARIABLE_VALUEblock2_Conv2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock2_Conv2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

γnon_trainable_variables
δlayers
εmetrics
 ζlayer_regularization_losses
ηlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

θtrace_0* 

ιtrace_0* 
* 
* 
* 

κnon_trainable_variables
λlayers
μmetrics
 νlayer_regularization_losses
ξlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses* 

οtrace_0* 

πtrace_0* 
 
z0
{1
|2
}3*

z0
{1*
* 

ρnon_trainable_variables
ςlayers
σmetrics
 τlayer_regularization_losses
υlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

φtrace_0
χtrace_1* 

ψtrace_0
ωtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

0
1*

0
1*
* 

ϊnon_trainable_variables
ϋlayers
όmetrics
 ύlayer_regularization_losses
ώlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

?trace_0* 

trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
c]
VARIABLE_VALUEoutput_layer/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEoutput_layer/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
J0
K1
|2
}3*
z
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
15*
$
0
1
2
3*
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

0*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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

J0
K1*
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

|0
}1*
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
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*
`
	variables
	keras_api

thresholds
true_positives
false_negatives*
`
	variables
	keras_api

thresholds
true_positives
false_positives*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
* 
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*block1_residual/kernel/Read/ReadVariableOp(block1_residual/bias/Read/ReadVariableOp'block1_Conv1/kernel/Read/ReadVariableOp%block1_Conv1/bias/Read/ReadVariableOp'block1_Conv2/kernel/Read/ReadVariableOp%block1_Conv2/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp*block2_residual/kernel/Read/ReadVariableOp(block2_residual/bias/Read/ReadVariableOp'block2_Conv1/kernel/Read/ReadVariableOp%block2_Conv1/bias/Read/ReadVariableOp'block2_Conv2/kernel/Read/ReadVariableOp%block2_Conv2/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp'output_layer/kernel/Read/ReadVariableOp%output_layer/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOpConst*/
Tin(
&2$	*
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
GPU2*0J 8 *&
f!R
__inference__traced_save_2833
σ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock1_residual/kernelblock1_residual/biasblock1_Conv1/kernelblock1_Conv1/biasblock1_Conv2/kernelblock1_Conv2/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceblock2_residual/kernelblock2_residual/biasblock2_Conv1/kernelblock2_Conv1/biasblock2_Conv2/kernelblock2_Conv2/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense/kernel
dense/biasoutput_layer/kerneloutput_layer/bias	iterationlearning_ratetotal_1count_1totalcounttrue_positives_1false_negativestrue_positivesfalse_positives*.
Tin'
%2#*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_restore_2945ΗΈ
 

+__inference_BadWordModel_layer_call_fn_1719
input_layer
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@ 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:	 

unknown_20:	

unknown_21:	

unknown_22:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1615o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:?????????<
%
_user_specified_nameinput_layer
ζ²

F__inference_BadWordModel_layer_call_and_return_conditional_losses_2150

inputsR
;block1_residual_conv1d_expanddims_1_readvariableop_resource:@=
/block1_residual_biasadd_readvariableop_resource:@N
8block1_conv1_conv1d_expanddims_1_readvariableop_resource:@@:
,block1_conv1_biasadd_readvariableop_resource:@N
8block1_conv2_conv1d_expanddims_1_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@C
5batch_normalization_batchnorm_readvariableop_resource:@G
9batch_normalization_batchnorm_mul_readvariableop_resource:@E
7batch_normalization_batchnorm_readvariableop_1_resource:@E
7batch_normalization_batchnorm_readvariableop_2_resource:@Q
;block2_residual_conv1d_expanddims_1_readvariableop_resource:@ =
/block2_residual_biasadd_readvariableop_resource: N
8block2_conv1_conv1d_expanddims_1_readvariableop_resource:  :
,block2_conv1_biasadd_readvariableop_resource: N
8block2_conv2_conv1d_expanddims_1_readvariableop_resource:  :
,block2_conv2_biasadd_readvariableop_resource: E
7batch_normalization_1_batchnorm_readvariableop_resource: I
;batch_normalization_1_batchnorm_mul_readvariableop_resource: G
9batch_normalization_1_batchnorm_readvariableop_1_resource: G
9batch_normalization_1_batchnorm_readvariableop_2_resource: 7
$dense_matmul_readvariableop_resource:	 4
%dense_biasadd_readvariableop_resource:	>
+output_layer_matmul_readvariableop_resource:	:
,output_layer_biasadd_readvariableop_resource:
identity’,batch_normalization/batchnorm/ReadVariableOp’.batch_normalization/batchnorm/ReadVariableOp_1’.batch_normalization/batchnorm/ReadVariableOp_2’0batch_normalization/batchnorm/mul/ReadVariableOp’.batch_normalization_1/batchnorm/ReadVariableOp’0batch_normalization_1/batchnorm/ReadVariableOp_1’0batch_normalization_1/batchnorm/ReadVariableOp_2’2batch_normalization_1/batchnorm/mul/ReadVariableOp’#block1_Conv1/BiasAdd/ReadVariableOp’/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp’#block1_Conv2/BiasAdd/ReadVariableOp’/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp’&block1_residual/BiasAdd/ReadVariableOp’2block1_residual/Conv1D/ExpandDims_1/ReadVariableOp’#block2_Conv1/BiasAdd/ReadVariableOp’/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp’#block2_Conv2/BiasAdd/ReadVariableOp’/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp’&block2_residual/BiasAdd/ReadVariableOp’2block2_residual/Conv1D/ExpandDims_1/ReadVariableOp’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOp’#output_layer/BiasAdd/ReadVariableOp’"output_layer/MatMul/ReadVariableOpp
%block1_residual/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????’
!block1_residual/Conv1D/ExpandDims
ExpandDimsinputs.block1_residual/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????<³
2block1_residual/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;block1_residual_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@*
dtype0i
'block1_residual/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ρ
#block1_residual/Conv1D/ExpandDims_1
ExpandDims:block1_residual/Conv1D/ExpandDims_1/ReadVariableOp:value:00block1_residual/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@έ
block1_residual/Conv1DConv2D*block1_residual/Conv1D/ExpandDims:output:0,block1_residual/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingVALID*
strides
 
block1_residual/Conv1D/SqueezeSqueezeblock1_residual/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????
&block1_residual/BiasAdd/ReadVariableOpReadVariableOp/block1_residual_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0±
block1_residual/BiasAddBiasAdd'block1_residual/Conv1D/Squeeze:output:0.block1_residual/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@m
"block1_Conv1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????΅
block1_Conv1/Conv1D/ExpandDims
ExpandDims block1_residual/BiasAdd:output:0+block1_Conv1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@¬
/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8block1_conv1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0f
$block1_Conv1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Η
 block1_Conv1/Conv1D/ExpandDims_1
ExpandDims7block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp:value:0-block1_Conv1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@Σ
block1_Conv1/Conv1DConv2D'block1_Conv1/Conv1D/ExpandDims:output:0)block1_Conv1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides

block1_Conv1/Conv1D/SqueezeSqueezeblock1_Conv1/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????
#block1_Conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¨
block1_Conv1/BiasAddBiasAdd$block1_Conv1/Conv1D/Squeeze:output:0+block1_Conv1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@n
block1_Conv1/ReluRelublock1_Conv1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????5@m
"block1_Conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????΄
block1_Conv2/Conv1D/ExpandDims
ExpandDimsblock1_Conv1/Relu:activations:0+block1_Conv2/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@¬
/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8block1_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0f
$block1_Conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Η
 block1_Conv2/Conv1D/ExpandDims_1
ExpandDims7block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:0-block1_Conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@Σ
block1_Conv2/Conv1DConv2D'block1_Conv2/Conv1D/ExpandDims:output:0)block1_Conv2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides

block1_Conv2/Conv1D/SqueezeSqueezeblock1_Conv2/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????
#block1_Conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¨
block1_Conv2/BiasAddBiasAdd$block1_Conv2/Conv1D/Squeeze:output:0+block1_Conv2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@n
block1_Conv2/ReluRelublock1_Conv2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????5@
block1_add/addAddV2 block1_residual/BiasAdd:output:0block1_Conv2/Relu:activations:0*
T0*+
_output_shapes
:?????????5@_
block1_MaxPool/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
block1_MaxPool/ExpandDims
ExpandDimsblock1_add/add:z:0&block1_MaxPool/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@²
block1_MaxPool/MaxPoolMaxPool"block1_MaxPool/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

block1_MaxPool/SqueezeSqueezeblock1_MaxPool/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims

,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:³
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:@x
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:@¦
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0°
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@¨
#batch_normalization/batchnorm/mul_1Mulblock1_MaxPool/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@’
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:@’
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0?
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@²
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@p
%block2_residual/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????Β
!block2_residual/Conv1D/ExpandDims
ExpandDims'batch_normalization/batchnorm/add_1:z:0.block2_residual/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@²
2block2_residual/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;block2_residual_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype0i
'block2_residual/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Π
#block2_residual/Conv1D/ExpandDims_1
ExpandDims:block2_residual/Conv1D/ExpandDims_1/ReadVariableOp:value:00block2_residual/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ έ
block2_residual/Conv1DConv2D*block2_residual/Conv1D/ExpandDims:output:0,block2_residual/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
 
block2_residual/Conv1D/SqueezeSqueezeblock2_residual/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????
&block2_residual/BiasAdd/ReadVariableOpReadVariableOp/block2_residual_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0±
block2_residual/BiasAddBiasAdd'block2_residual/Conv1D/Squeeze:output:0.block2_residual/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? m
"block2_Conv1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????΅
block2_Conv1/Conv1D/ExpandDims
ExpandDims block2_residual/BiasAdd:output:0+block2_Conv1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? ¬
/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8block2_conv1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0f
$block2_Conv1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Η
 block2_Conv1/Conv1D/ExpandDims_1
ExpandDims7block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp:value:0-block2_Conv1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  Σ
block2_Conv1/Conv1DConv2D'block2_Conv1/Conv1D/ExpandDims:output:0)block2_Conv1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

block2_Conv1/Conv1D/SqueezeSqueezeblock2_Conv1/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????
#block2_Conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¨
block2_Conv1/BiasAddBiasAdd$block2_Conv1/Conv1D/Squeeze:output:0+block2_Conv1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? n
block2_Conv1/ReluRelublock2_Conv1/BiasAdd:output:0*
T0*+
_output_shapes
:????????? m
"block2_Conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????΄
block2_Conv2/Conv1D/ExpandDims
ExpandDimsblock2_Conv1/Relu:activations:0+block2_Conv2/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? ¬
/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8block2_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0f
$block2_Conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Η
 block2_Conv2/Conv1D/ExpandDims_1
ExpandDims7block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:0-block2_Conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  Σ
block2_Conv2/Conv1DConv2D'block2_Conv2/Conv1D/ExpandDims:output:0)block2_Conv2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

block2_Conv2/Conv1D/SqueezeSqueezeblock2_Conv2/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????
#block2_Conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¨
block2_Conv2/BiasAddBiasAdd$block2_Conv2/Conv1D/Squeeze:output:0+block2_Conv2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? n
block2_Conv2/ReluRelublock2_Conv2/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 
block2_add/addAddV2 block2_residual/BiasAdd:output:0block2_Conv2/Relu:activations:0*
T0*+
_output_shapes
:????????? _
block2_MaxPool/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
block2_MaxPool/ExpandDims
ExpandDimsblock2_add/add:z:0&block2_MaxPool/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? ²
block2_MaxPool/MaxPoolMaxPool"block2_MaxPool/ExpandDims:output:0*/
_output_shapes
:?????????	 *
ksize
*
paddingVALID*
strides

block2_MaxPool/SqueezeSqueezeblock2_MaxPool/MaxPool:output:0*
T0*+
_output_shapes
:?????????	 *
squeeze_dims
’
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ή
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: |
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: ͺ
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ά
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ¬
%batch_normalization_1/batchnorm/mul_1Mulblock2_MaxPool/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????	 ¦
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0΄
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: ¦
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0΄
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: Έ
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????	 g
%tf_op_layer_Sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Ά
tf_op_layer_Sum/SumSum)batch_normalization_1/batchnorm/add_1:z:0.tf_op_layer_Sum/Sum/reduction_indices:output:0*
T0*
_cloned(*'
_output_shapes
:????????? 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
dense/MatMulMatMultf_op_layer_Sum/Sum:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
output_layer/MatMulMatMuldense/Relu:activations:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
output_layer/SigmoidSigmoidoutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????g
IdentityIdentityoutput_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????ϊ
NoOpNoOp-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp$^block1_Conv1/BiasAdd/ReadVariableOp0^block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp$^block1_Conv2/BiasAdd/ReadVariableOp0^block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp'^block1_residual/BiasAdd/ReadVariableOp3^block1_residual/Conv1D/ExpandDims_1/ReadVariableOp$^block2_Conv1/BiasAdd/ReadVariableOp0^block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp$^block2_Conv2/BiasAdd/ReadVariableOp0^block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp'^block2_residual/BiasAdd/ReadVariableOp3^block2_residual/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2J
#block1_Conv1/BiasAdd/ReadVariableOp#block1_Conv1/BiasAdd/ReadVariableOp2b
/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp2J
#block1_Conv2/BiasAdd/ReadVariableOp#block1_Conv2/BiasAdd/ReadVariableOp2b
/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp2P
&block1_residual/BiasAdd/ReadVariableOp&block1_residual/BiasAdd/ReadVariableOp2h
2block1_residual/Conv1D/ExpandDims_1/ReadVariableOp2block1_residual/Conv1D/ExpandDims_1/ReadVariableOp2J
#block2_Conv1/BiasAdd/ReadVariableOp#block2_Conv1/BiasAdd/ReadVariableOp2b
/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp2J
#block2_Conv2/BiasAdd/ReadVariableOp#block2_Conv2/BiasAdd/ReadVariableOp2b
/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp2P
&block2_residual/BiasAdd/ReadVariableOp&block2_residual/BiasAdd/ReadVariableOp2h
2block2_residual/Conv1D/ExpandDims_1/ReadVariableOp2block2_residual/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
Μ
c
G__inference_block1_MaxPool_layer_call_and_return_conditional_losses_955

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????¦
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
Μ

+__inference_output_layer_layer_call_fn_2697

inputs
unknown:	
	unknown_0:
identity’StatefulPartitionedCallή
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_1340o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Φ
Ν
2__inference_batch_normalization_layer_call_fn_2422

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_982|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
€

+__inference_BadWordModel_layer_call_fn_1398
input_layer
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@ 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:	 

unknown_20:	

unknown_21:	

unknown_22:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1347o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:?????????<
%
_user_specified_nameinput_layer
Ν
d
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_2588

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????¦
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
 

ψ
F__inference_output_layer_layer_call_and_return_conditional_losses_2708

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ω%
ζ
M__inference_batch_normalization_layer_call_and_return_conditional_losses_2489

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????@s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ’
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????@o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
εH

F__inference_BadWordModel_layer_call_and_return_conditional_losses_1347

inputs+
block1_residual_1160:@"
block1_residual_1162:@'
block1_conv1_1182:@@
block1_conv1_1184:@'
block1_conv2_1204:@@
block1_conv2_1206:@&
batch_normalization_1218:@&
batch_normalization_1220:@&
batch_normalization_1222:@&
batch_normalization_1224:@*
block2_residual_1243:@ "
block2_residual_1245: '
block2_conv1_1265:  
block2_conv1_1267: '
block2_conv2_1287:  
block2_conv2_1289: (
batch_normalization_1_1301: (
batch_normalization_1_1303: (
batch_normalization_1_1305: (
batch_normalization_1_1307: 

dense_1324:	 

dense_1326:	$
output_layer_1341:	
output_layer_1343:
identity’+batch_normalization/StatefulPartitionedCall’-batch_normalization_1/StatefulPartitionedCall’$block1_Conv1/StatefulPartitionedCall’$block1_Conv2/StatefulPartitionedCall’'block1_residual/StatefulPartitionedCall’$block2_Conv1/StatefulPartitionedCall’$block2_Conv2/StatefulPartitionedCall’'block2_residual/StatefulPartitionedCall’dense/StatefulPartitionedCall’$output_layer/StatefulPartitionedCall
'block1_residual/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_residual_1160block1_residual_1162*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_residual_layer_call_and_return_conditional_losses_1159«
$block1_Conv1/StatefulPartitionedCallStatefulPartitionedCall0block1_residual/StatefulPartitionedCall:output:0block1_conv1_1182block1_conv1_1184*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv1_layer_call_and_return_conditional_losses_1181¨
$block1_Conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_Conv1/StatefulPartitionedCall:output:0block1_conv2_1204block1_conv2_1206*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv2_layer_call_and_return_conditional_losses_1203
block1_add/PartitionedCallPartitionedCall0block1_residual/StatefulPartitionedCall:output:0-block1_Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block1_add_layer_call_and_return_conditional_losses_1215ε
block1_MaxPool/PartitionedCallPartitionedCall#block1_add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_block1_MaxPool_layer_call_and_return_conditional_losses_955υ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'block1_MaxPool/PartitionedCall:output:0batch_normalization_1218batch_normalization_1220batch_normalization_1222batch_normalization_1224*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_982»
'block2_residual/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0block2_residual_1243block2_residual_1245*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_residual_layer_call_and_return_conditional_losses_1242«
$block2_Conv1/StatefulPartitionedCallStatefulPartitionedCall0block2_residual/StatefulPartitionedCall:output:0block2_conv1_1265block2_conv1_1267*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv1_layer_call_and_return_conditional_losses_1264¨
$block2_Conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_Conv1/StatefulPartitionedCall:output:0block2_conv2_1287block2_conv2_1289*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv2_layer_call_and_return_conditional_losses_1286
block2_add/PartitionedCallPartitionedCall0block2_residual/StatefulPartitionedCall:output:0-block2_Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block2_add_layer_call_and_return_conditional_losses_1298ζ
block2_MaxPool/PartitionedCallPartitionedCall#block2_add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_1052
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall'block2_MaxPool/PartitionedCall:output:0batch_normalization_1_1301batch_normalization_1_1303batch_normalization_1_1305batch_normalization_1_1307*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1079g
%tf_op_layer_Sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Γ
tf_op_layer_Sum/SumSum6batch_normalization_1/StatefulPartitionedCall:output:0.tf_op_layer_Sum/Sum/reduction_indices:output:0*
T0*
_cloned(*'
_output_shapes
:????????? ψ
dense/StatefulPartitionedCallStatefulPartitionedCalltf_op_layer_Sum/Sum:output:0
dense_1324
dense_1326*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1323
$output_layer/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0output_layer_1341output_layer_1343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_1340|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Ϋ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall%^block1_Conv1/StatefulPartitionedCall%^block1_Conv2/StatefulPartitionedCall(^block1_residual/StatefulPartitionedCall%^block2_Conv1/StatefulPartitionedCall%^block2_Conv2/StatefulPartitionedCall(^block2_residual/StatefulPartitionedCall^dense/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2L
$block1_Conv1/StatefulPartitionedCall$block1_Conv1/StatefulPartitionedCall2L
$block1_Conv2/StatefulPartitionedCall$block1_Conv2/StatefulPartitionedCall2R
'block1_residual/StatefulPartitionedCall'block1_residual/StatefulPartitionedCall2L
$block2_Conv1/StatefulPartitionedCall$block2_Conv1/StatefulPartitionedCall2L
$block2_Conv2/StatefulPartitionedCall$block2_Conv2/StatefulPartitionedCall2R
'block2_residual/StatefulPartitionedCall'block2_residual/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
Ρ
n
D__inference_block1_add_layer_call_and_return_conditional_losses_1215

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:?????????5@S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:?????????5@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:?????????5@:?????????5@:S O
+
_output_shapes
:?????????5@
 
_user_specified_nameinputs:SO
+
_output_shapes
:?????????5@
 
_user_specified_nameinputs


ς
?__inference_dense_layer_call_and_return_conditional_losses_2688

inputs1
matmul_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
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
Ι

F__inference_block2_Conv1_layer_call_and_return_conditional_losses_2538

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ¬
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
τH

F__inference_BadWordModel_layer_call_and_return_conditional_losses_1787
input_layer+
block1_residual_1722:@"
block1_residual_1724:@'
block1_conv1_1727:@@
block1_conv1_1729:@'
block1_conv2_1732:@@
block1_conv2_1734:@&
batch_normalization_1739:@&
batch_normalization_1741:@&
batch_normalization_1743:@&
batch_normalization_1745:@*
block2_residual_1748:@ "
block2_residual_1750: '
block2_conv1_1753:  
block2_conv1_1755: '
block2_conv2_1758:  
block2_conv2_1760: (
batch_normalization_1_1765: (
batch_normalization_1_1767: (
batch_normalization_1_1769: (
batch_normalization_1_1771: 

dense_1776:	 

dense_1778:	$
output_layer_1781:	
output_layer_1783:
identity’+batch_normalization/StatefulPartitionedCall’-batch_normalization_1/StatefulPartitionedCall’$block1_Conv1/StatefulPartitionedCall’$block1_Conv2/StatefulPartitionedCall’'block1_residual/StatefulPartitionedCall’$block2_Conv1/StatefulPartitionedCall’$block2_Conv2/StatefulPartitionedCall’'block2_residual/StatefulPartitionedCall’dense/StatefulPartitionedCall’$output_layer/StatefulPartitionedCall
'block1_residual/StatefulPartitionedCallStatefulPartitionedCallinput_layerblock1_residual_1722block1_residual_1724*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_residual_layer_call_and_return_conditional_losses_1159«
$block1_Conv1/StatefulPartitionedCallStatefulPartitionedCall0block1_residual/StatefulPartitionedCall:output:0block1_conv1_1727block1_conv1_1729*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv1_layer_call_and_return_conditional_losses_1181¨
$block1_Conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_Conv1/StatefulPartitionedCall:output:0block1_conv2_1732block1_conv2_1734*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv2_layer_call_and_return_conditional_losses_1203
block1_add/PartitionedCallPartitionedCall0block1_residual/StatefulPartitionedCall:output:0-block1_Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block1_add_layer_call_and_return_conditional_losses_1215ε
block1_MaxPool/PartitionedCallPartitionedCall#block1_add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_block1_MaxPool_layer_call_and_return_conditional_losses_955υ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'block1_MaxPool/PartitionedCall:output:0batch_normalization_1739batch_normalization_1741batch_normalization_1743batch_normalization_1745*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_982»
'block2_residual/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0block2_residual_1748block2_residual_1750*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_residual_layer_call_and_return_conditional_losses_1242«
$block2_Conv1/StatefulPartitionedCallStatefulPartitionedCall0block2_residual/StatefulPartitionedCall:output:0block2_conv1_1753block2_conv1_1755*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv1_layer_call_and_return_conditional_losses_1264¨
$block2_Conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_Conv1/StatefulPartitionedCall:output:0block2_conv2_1758block2_conv2_1760*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv2_layer_call_and_return_conditional_losses_1286
block2_add/PartitionedCallPartitionedCall0block2_residual/StatefulPartitionedCall:output:0-block2_Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block2_add_layer_call_and_return_conditional_losses_1298ζ
block2_MaxPool/PartitionedCallPartitionedCall#block2_add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_1052
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall'block2_MaxPool/PartitionedCall:output:0batch_normalization_1_1765batch_normalization_1_1767batch_normalization_1_1769batch_normalization_1_1771*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1079g
%tf_op_layer_Sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Γ
tf_op_layer_Sum/SumSum6batch_normalization_1/StatefulPartitionedCall:output:0.tf_op_layer_Sum/Sum/reduction_indices:output:0*
T0*
_cloned(*'
_output_shapes
:????????? ψ
dense/StatefulPartitionedCallStatefulPartitionedCalltf_op_layer_Sum/Sum:output:0
dense_1776
dense_1778*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1323
$output_layer/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0output_layer_1781output_layer_1783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_1340|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Ϋ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall%^block1_Conv1/StatefulPartitionedCall%^block1_Conv2/StatefulPartitionedCall(^block1_residual/StatefulPartitionedCall%^block2_Conv1/StatefulPartitionedCall%^block2_Conv2/StatefulPartitionedCall(^block2_residual/StatefulPartitionedCall^dense/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2L
$block1_Conv1/StatefulPartitionedCall$block1_Conv1/StatefulPartitionedCall2L
$block1_Conv2/StatefulPartitionedCall$block1_Conv2/StatefulPartitionedCall2R
'block1_residual/StatefulPartitionedCall'block1_residual/StatefulPartitionedCall2L
$block2_Conv1/StatefulPartitionedCall$block2_Conv1/StatefulPartitionedCall2L
$block2_Conv2/StatefulPartitionedCall$block2_Conv2/StatefulPartitionedCall2R
'block2_residual/StatefulPartitionedCall'block2_residual/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:Y U
,
_output_shapes
:?????????<
%
_user_specified_nameinput_layer
υ

I__inference_block2_residual_layer_call_and_return_conditional_losses_1242

inputsA
+conv1d_expanddims_1_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ ­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:????????? 
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ρ
n
D__inference_block2_add_layer_call_and_return_conditional_losses_1298

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:????????? S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:????????? :????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs:SO
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
Υ
Ν
2__inference_batch_normalization_layer_call_fn_2435

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1029|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
μΦ
ζ
__inference__wrapped_model_943
input_layer_
Hbadwordmodel_block1_residual_conv1d_expanddims_1_readvariableop_resource:@J
<badwordmodel_block1_residual_biasadd_readvariableop_resource:@[
Ebadwordmodel_block1_conv1_conv1d_expanddims_1_readvariableop_resource:@@G
9badwordmodel_block1_conv1_biasadd_readvariableop_resource:@[
Ebadwordmodel_block1_conv2_conv1d_expanddims_1_readvariableop_resource:@@G
9badwordmodel_block1_conv2_biasadd_readvariableop_resource:@P
Bbadwordmodel_batch_normalization_batchnorm_readvariableop_resource:@T
Fbadwordmodel_batch_normalization_batchnorm_mul_readvariableop_resource:@R
Dbadwordmodel_batch_normalization_batchnorm_readvariableop_1_resource:@R
Dbadwordmodel_batch_normalization_batchnorm_readvariableop_2_resource:@^
Hbadwordmodel_block2_residual_conv1d_expanddims_1_readvariableop_resource:@ J
<badwordmodel_block2_residual_biasadd_readvariableop_resource: [
Ebadwordmodel_block2_conv1_conv1d_expanddims_1_readvariableop_resource:  G
9badwordmodel_block2_conv1_biasadd_readvariableop_resource: [
Ebadwordmodel_block2_conv2_conv1d_expanddims_1_readvariableop_resource:  G
9badwordmodel_block2_conv2_biasadd_readvariableop_resource: R
Dbadwordmodel_batch_normalization_1_batchnorm_readvariableop_resource: V
Hbadwordmodel_batch_normalization_1_batchnorm_mul_readvariableop_resource: T
Fbadwordmodel_batch_normalization_1_batchnorm_readvariableop_1_resource: T
Fbadwordmodel_batch_normalization_1_batchnorm_readvariableop_2_resource: D
1badwordmodel_dense_matmul_readvariableop_resource:	 A
2badwordmodel_dense_biasadd_readvariableop_resource:	K
8badwordmodel_output_layer_matmul_readvariableop_resource:	G
9badwordmodel_output_layer_biasadd_readvariableop_resource:
identity’9BadWordModel/batch_normalization/batchnorm/ReadVariableOp’;BadWordModel/batch_normalization/batchnorm/ReadVariableOp_1’;BadWordModel/batch_normalization/batchnorm/ReadVariableOp_2’=BadWordModel/batch_normalization/batchnorm/mul/ReadVariableOp’;BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp’=BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_1’=BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_2’?BadWordModel/batch_normalization_1/batchnorm/mul/ReadVariableOp’0BadWordModel/block1_Conv1/BiasAdd/ReadVariableOp’<BadWordModel/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp’0BadWordModel/block1_Conv2/BiasAdd/ReadVariableOp’<BadWordModel/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp’3BadWordModel/block1_residual/BiasAdd/ReadVariableOp’?BadWordModel/block1_residual/Conv1D/ExpandDims_1/ReadVariableOp’0BadWordModel/block2_Conv1/BiasAdd/ReadVariableOp’<BadWordModel/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp’0BadWordModel/block2_Conv2/BiasAdd/ReadVariableOp’<BadWordModel/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp’3BadWordModel/block2_residual/BiasAdd/ReadVariableOp’?BadWordModel/block2_residual/Conv1D/ExpandDims_1/ReadVariableOp’)BadWordModel/dense/BiasAdd/ReadVariableOp’(BadWordModel/dense/MatMul/ReadVariableOp’0BadWordModel/output_layer/BiasAdd/ReadVariableOp’/BadWordModel/output_layer/MatMul/ReadVariableOp}
2BadWordModel/block1_residual/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????Α
.BadWordModel/block1_residual/Conv1D/ExpandDims
ExpandDimsinput_layer;BadWordModel/block1_residual/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????<Ν
?BadWordModel/block1_residual/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpHbadwordmodel_block1_residual_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@*
dtype0v
4BadWordModel/block1_residual/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ψ
0BadWordModel/block1_residual/Conv1D/ExpandDims_1
ExpandDimsGBadWordModel/block1_residual/Conv1D/ExpandDims_1/ReadVariableOp:value:0=BadWordModel/block1_residual/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@
#BadWordModel/block1_residual/Conv1DConv2D7BadWordModel/block1_residual/Conv1D/ExpandDims:output:09BadWordModel/block1_residual/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingVALID*
strides
Ί
+BadWordModel/block1_residual/Conv1D/SqueezeSqueeze,BadWordModel/block1_residual/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????¬
3BadWordModel/block1_residual/BiasAdd/ReadVariableOpReadVariableOp<badwordmodel_block1_residual_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ψ
$BadWordModel/block1_residual/BiasAddBiasAdd4BadWordModel/block1_residual/Conv1D/Squeeze:output:0;BadWordModel/block1_residual/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@z
/BadWordModel/block1_Conv1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????ά
+BadWordModel/block1_Conv1/Conv1D/ExpandDims
ExpandDims-BadWordModel/block1_residual/BiasAdd:output:08BadWordModel/block1_Conv1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@Ζ
<BadWordModel/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEbadwordmodel_block1_conv1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0s
1BadWordModel/block1_Conv1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ξ
-BadWordModel/block1_Conv1/Conv1D/ExpandDims_1
ExpandDimsDBadWordModel/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp:value:0:BadWordModel/block1_Conv1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@ϊ
 BadWordModel/block1_Conv1/Conv1DConv2D4BadWordModel/block1_Conv1/Conv1D/ExpandDims:output:06BadWordModel/block1_Conv1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides
΄
(BadWordModel/block1_Conv1/Conv1D/SqueezeSqueeze)BadWordModel/block1_Conv1/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????¦
0BadWordModel/block1_Conv1/BiasAdd/ReadVariableOpReadVariableOp9badwordmodel_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ο
!BadWordModel/block1_Conv1/BiasAddBiasAdd1BadWordModel/block1_Conv1/Conv1D/Squeeze:output:08BadWordModel/block1_Conv1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@
BadWordModel/block1_Conv1/ReluRelu*BadWordModel/block1_Conv1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????5@z
/BadWordModel/block1_Conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????Ϋ
+BadWordModel/block1_Conv2/Conv1D/ExpandDims
ExpandDims,BadWordModel/block1_Conv1/Relu:activations:08BadWordModel/block1_Conv2/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@Ζ
<BadWordModel/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEbadwordmodel_block1_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0s
1BadWordModel/block1_Conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ξ
-BadWordModel/block1_Conv2/Conv1D/ExpandDims_1
ExpandDimsDBadWordModel/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:0:BadWordModel/block1_Conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@ϊ
 BadWordModel/block1_Conv2/Conv1DConv2D4BadWordModel/block1_Conv2/Conv1D/ExpandDims:output:06BadWordModel/block1_Conv2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides
΄
(BadWordModel/block1_Conv2/Conv1D/SqueezeSqueeze)BadWordModel/block1_Conv2/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????¦
0BadWordModel/block1_Conv2/BiasAdd/ReadVariableOpReadVariableOp9badwordmodel_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ο
!BadWordModel/block1_Conv2/BiasAddBiasAdd1BadWordModel/block1_Conv2/Conv1D/Squeeze:output:08BadWordModel/block1_Conv2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@
BadWordModel/block1_Conv2/ReluRelu*BadWordModel/block1_Conv2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????5@·
BadWordModel/block1_add/addAddV2-BadWordModel/block1_residual/BiasAdd:output:0,BadWordModel/block1_Conv2/Relu:activations:0*
T0*+
_output_shapes
:?????????5@l
*BadWordModel/block1_MaxPool/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Δ
&BadWordModel/block1_MaxPool/ExpandDims
ExpandDimsBadWordModel/block1_add/add:z:03BadWordModel/block1_MaxPool/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@Μ
#BadWordModel/block1_MaxPool/MaxPoolMaxPool/BadWordModel/block1_MaxPool/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
©
#BadWordModel/block1_MaxPool/SqueezeSqueeze,BadWordModel/block1_MaxPool/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
Έ
9BadWordModel/batch_normalization/batchnorm/ReadVariableOpReadVariableOpBbadwordmodel_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0u
0BadWordModel/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ϊ
.BadWordModel/batch_normalization/batchnorm/addAddV2ABadWordModel/batch_normalization/batchnorm/ReadVariableOp:value:09BadWordModel/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:@
0BadWordModel/batch_normalization/batchnorm/RsqrtRsqrt2BadWordModel/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:@ΐ
=BadWordModel/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpFbadwordmodel_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0Χ
.BadWordModel/batch_normalization/batchnorm/mulMul4BadWordModel/batch_normalization/batchnorm/Rsqrt:y:0EBadWordModel/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@Ο
0BadWordModel/batch_normalization/batchnorm/mul_1Mul,BadWordModel/block1_MaxPool/Squeeze:output:02BadWordModel/batch_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@Ό
;BadWordModel/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpDbadwordmodel_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0Υ
0BadWordModel/batch_normalization/batchnorm/mul_2MulCBadWordModel/batch_normalization/batchnorm/ReadVariableOp_1:value:02BadWordModel/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:@Ό
;BadWordModel/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpDbadwordmodel_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0Υ
.BadWordModel/batch_normalization/batchnorm/subSubCBadWordModel/batch_normalization/batchnorm/ReadVariableOp_2:value:04BadWordModel/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@Ω
0BadWordModel/batch_normalization/batchnorm/add_1AddV24BadWordModel/batch_normalization/batchnorm/mul_1:z:02BadWordModel/batch_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@}
2BadWordModel/block2_residual/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????ι
.BadWordModel/block2_residual/Conv1D/ExpandDims
ExpandDims4BadWordModel/batch_normalization/batchnorm/add_1:z:0;BadWordModel/block2_residual/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@Μ
?BadWordModel/block2_residual/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpHbadwordmodel_block2_residual_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype0v
4BadWordModel/block2_residual/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : χ
0BadWordModel/block2_residual/Conv1D/ExpandDims_1
ExpandDimsGBadWordModel/block2_residual/Conv1D/ExpandDims_1/ReadVariableOp:value:0=BadWordModel/block2_residual/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 
#BadWordModel/block2_residual/Conv1DConv2D7BadWordModel/block2_residual/Conv1D/ExpandDims:output:09BadWordModel/block2_residual/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
Ί
+BadWordModel/block2_residual/Conv1D/SqueezeSqueeze,BadWordModel/block2_residual/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????¬
3BadWordModel/block2_residual/BiasAdd/ReadVariableOpReadVariableOp<badwordmodel_block2_residual_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ψ
$BadWordModel/block2_residual/BiasAddBiasAdd4BadWordModel/block2_residual/Conv1D/Squeeze:output:0;BadWordModel/block2_residual/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? z
/BadWordModel/block2_Conv1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????ά
+BadWordModel/block2_Conv1/Conv1D/ExpandDims
ExpandDims-BadWordModel/block2_residual/BiasAdd:output:08BadWordModel/block2_Conv1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? Ζ
<BadWordModel/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEbadwordmodel_block2_conv1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0s
1BadWordModel/block2_Conv1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ξ
-BadWordModel/block2_Conv1/Conv1D/ExpandDims_1
ExpandDimsDBadWordModel/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp:value:0:BadWordModel/block2_Conv1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ϊ
 BadWordModel/block2_Conv1/Conv1DConv2D4BadWordModel/block2_Conv1/Conv1D/ExpandDims:output:06BadWordModel/block2_Conv1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
΄
(BadWordModel/block2_Conv1/Conv1D/SqueezeSqueeze)BadWordModel/block2_Conv1/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????¦
0BadWordModel/block2_Conv1/BiasAdd/ReadVariableOpReadVariableOp9badwordmodel_block2_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ο
!BadWordModel/block2_Conv1/BiasAddBiasAdd1BadWordModel/block2_Conv1/Conv1D/Squeeze:output:08BadWordModel/block2_Conv1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 
BadWordModel/block2_Conv1/ReluRelu*BadWordModel/block2_Conv1/BiasAdd:output:0*
T0*+
_output_shapes
:????????? z
/BadWordModel/block2_Conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????Ϋ
+BadWordModel/block2_Conv2/Conv1D/ExpandDims
ExpandDims,BadWordModel/block2_Conv1/Relu:activations:08BadWordModel/block2_Conv2/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? Ζ
<BadWordModel/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEbadwordmodel_block2_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0s
1BadWordModel/block2_Conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ξ
-BadWordModel/block2_Conv2/Conv1D/ExpandDims_1
ExpandDimsDBadWordModel/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:0:BadWordModel/block2_Conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ϊ
 BadWordModel/block2_Conv2/Conv1DConv2D4BadWordModel/block2_Conv2/Conv1D/ExpandDims:output:06BadWordModel/block2_Conv2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
΄
(BadWordModel/block2_Conv2/Conv1D/SqueezeSqueeze)BadWordModel/block2_Conv2/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????¦
0BadWordModel/block2_Conv2/BiasAdd/ReadVariableOpReadVariableOp9badwordmodel_block2_conv2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ο
!BadWordModel/block2_Conv2/BiasAddBiasAdd1BadWordModel/block2_Conv2/Conv1D/Squeeze:output:08BadWordModel/block2_Conv2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 
BadWordModel/block2_Conv2/ReluRelu*BadWordModel/block2_Conv2/BiasAdd:output:0*
T0*+
_output_shapes
:????????? ·
BadWordModel/block2_add/addAddV2-BadWordModel/block2_residual/BiasAdd:output:0,BadWordModel/block2_Conv2/Relu:activations:0*
T0*+
_output_shapes
:????????? l
*BadWordModel/block2_MaxPool/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Δ
&BadWordModel/block2_MaxPool/ExpandDims
ExpandDimsBadWordModel/block2_add/add:z:03BadWordModel/block2_MaxPool/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? Μ
#BadWordModel/block2_MaxPool/MaxPoolMaxPool/BadWordModel/block2_MaxPool/ExpandDims:output:0*/
_output_shapes
:?????????	 *
ksize
*
paddingVALID*
strides
©
#BadWordModel/block2_MaxPool/SqueezeSqueeze,BadWordModel/block2_MaxPool/MaxPool:output:0*
T0*+
_output_shapes
:?????????	 *
squeeze_dims
Ό
;BadWordModel/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpDbadwordmodel_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0w
2BadWordModel/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ΰ
0BadWordModel/batch_normalization_1/batchnorm/addAddV2CBadWordModel/batch_normalization_1/batchnorm/ReadVariableOp:value:0;BadWordModel/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 
2BadWordModel/batch_normalization_1/batchnorm/RsqrtRsqrt4BadWordModel/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: Δ
?BadWordModel/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpHbadwordmodel_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0έ
0BadWordModel/batch_normalization_1/batchnorm/mulMul6BadWordModel/batch_normalization_1/batchnorm/Rsqrt:y:0GBadWordModel/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: Σ
2BadWordModel/batch_normalization_1/batchnorm/mul_1Mul,BadWordModel/block2_MaxPool/Squeeze:output:04BadWordModel/batch_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????	 ΐ
=BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOpFbadwordmodel_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0Ϋ
2BadWordModel/batch_normalization_1/batchnorm/mul_2MulEBadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_1:value:04BadWordModel/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: ΐ
=BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOpFbadwordmodel_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0Ϋ
0BadWordModel/batch_normalization_1/batchnorm/subSubEBadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_2:value:06BadWordModel/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ί
2BadWordModel/batch_normalization_1/batchnorm/add_1AddV26BadWordModel/batch_normalization_1/batchnorm/mul_1:z:04BadWordModel/batch_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????	 t
2BadWordModel/tf_op_layer_Sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :έ
 BadWordModel/tf_op_layer_Sum/SumSum6BadWordModel/batch_normalization_1/batchnorm/add_1:z:0;BadWordModel/tf_op_layer_Sum/Sum/reduction_indices:output:0*
T0*
_cloned(*'
_output_shapes
:????????? 
(BadWordModel/dense/MatMul/ReadVariableOpReadVariableOp1badwordmodel_dense_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0³
BadWordModel/dense/MatMulMatMul)BadWordModel/tf_op_layer_Sum/Sum:output:00BadWordModel/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
)BadWordModel/dense/BiasAdd/ReadVariableOpReadVariableOp2badwordmodel_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
BadWordModel/dense/BiasAddBiasAdd#BadWordModel/dense/MatMul:product:01BadWordModel/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????w
BadWordModel/dense/ReluRelu#BadWordModel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????©
/BadWordModel/output_layer/MatMul/ReadVariableOpReadVariableOp8badwordmodel_output_layer_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ό
 BadWordModel/output_layer/MatMulMatMul%BadWordModel/dense/Relu:activations:07BadWordModel/output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????¦
0BadWordModel/output_layer/BiasAdd/ReadVariableOpReadVariableOp9badwordmodel_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Δ
!BadWordModel/output_layer/BiasAddBiasAdd*BadWordModel/output_layer/MatMul:product:08BadWordModel/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
!BadWordModel/output_layer/SigmoidSigmoid*BadWordModel/output_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%BadWordModel/output_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????²
NoOpNoOp:^BadWordModel/batch_normalization/batchnorm/ReadVariableOp<^BadWordModel/batch_normalization/batchnorm/ReadVariableOp_1<^BadWordModel/batch_normalization/batchnorm/ReadVariableOp_2>^BadWordModel/batch_normalization/batchnorm/mul/ReadVariableOp<^BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp>^BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_1>^BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_2@^BadWordModel/batch_normalization_1/batchnorm/mul/ReadVariableOp1^BadWordModel/block1_Conv1/BiasAdd/ReadVariableOp=^BadWordModel/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp1^BadWordModel/block1_Conv2/BiasAdd/ReadVariableOp=^BadWordModel/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp4^BadWordModel/block1_residual/BiasAdd/ReadVariableOp@^BadWordModel/block1_residual/Conv1D/ExpandDims_1/ReadVariableOp1^BadWordModel/block2_Conv1/BiasAdd/ReadVariableOp=^BadWordModel/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp1^BadWordModel/block2_Conv2/BiasAdd/ReadVariableOp=^BadWordModel/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp4^BadWordModel/block2_residual/BiasAdd/ReadVariableOp@^BadWordModel/block2_residual/Conv1D/ExpandDims_1/ReadVariableOp*^BadWordModel/dense/BiasAdd/ReadVariableOp)^BadWordModel/dense/MatMul/ReadVariableOp1^BadWordModel/output_layer/BiasAdd/ReadVariableOp0^BadWordModel/output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 2v
9BadWordModel/batch_normalization/batchnorm/ReadVariableOp9BadWordModel/batch_normalization/batchnorm/ReadVariableOp2z
;BadWordModel/batch_normalization/batchnorm/ReadVariableOp_1;BadWordModel/batch_normalization/batchnorm/ReadVariableOp_12z
;BadWordModel/batch_normalization/batchnorm/ReadVariableOp_2;BadWordModel/batch_normalization/batchnorm/ReadVariableOp_22~
=BadWordModel/batch_normalization/batchnorm/mul/ReadVariableOp=BadWordModel/batch_normalization/batchnorm/mul/ReadVariableOp2z
;BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp;BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp2~
=BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_1=BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_12~
=BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_2=BadWordModel/batch_normalization_1/batchnorm/ReadVariableOp_22
?BadWordModel/batch_normalization_1/batchnorm/mul/ReadVariableOp?BadWordModel/batch_normalization_1/batchnorm/mul/ReadVariableOp2d
0BadWordModel/block1_Conv1/BiasAdd/ReadVariableOp0BadWordModel/block1_Conv1/BiasAdd/ReadVariableOp2|
<BadWordModel/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp<BadWordModel/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp2d
0BadWordModel/block1_Conv2/BiasAdd/ReadVariableOp0BadWordModel/block1_Conv2/BiasAdd/ReadVariableOp2|
<BadWordModel/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp<BadWordModel/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp2j
3BadWordModel/block1_residual/BiasAdd/ReadVariableOp3BadWordModel/block1_residual/BiasAdd/ReadVariableOp2
?BadWordModel/block1_residual/Conv1D/ExpandDims_1/ReadVariableOp?BadWordModel/block1_residual/Conv1D/ExpandDims_1/ReadVariableOp2d
0BadWordModel/block2_Conv1/BiasAdd/ReadVariableOp0BadWordModel/block2_Conv1/BiasAdd/ReadVariableOp2|
<BadWordModel/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp<BadWordModel/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp2d
0BadWordModel/block2_Conv2/BiasAdd/ReadVariableOp0BadWordModel/block2_Conv2/BiasAdd/ReadVariableOp2|
<BadWordModel/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp<BadWordModel/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp2j
3BadWordModel/block2_residual/BiasAdd/ReadVariableOp3BadWordModel/block2_residual/BiasAdd/ReadVariableOp2
?BadWordModel/block2_residual/Conv1D/ExpandDims_1/ReadVariableOp?BadWordModel/block2_residual/Conv1D/ExpandDims_1/ReadVariableOp2V
)BadWordModel/dense/BiasAdd/ReadVariableOp)BadWordModel/dense/BiasAdd/ReadVariableOp2T
(BadWordModel/dense/MatMul/ReadVariableOp(BadWordModel/dense/MatMul/ReadVariableOp2d
0BadWordModel/output_layer/BiasAdd/ReadVariableOp0BadWordModel/output_layer/BiasAdd/ReadVariableOp2b
/BadWordModel/output_layer/MatMul/ReadVariableOp/BadWordModel/output_layer/MatMul/ReadVariableOp:Y U
,
_output_shapes
:?????????<
%
_user_specified_nameinput_layer


+__inference_BadWordModel_layer_call_fn_1965

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@ 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:	 

unknown_20:	

unknown_21:	

unknown_22:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1347o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
G
Β
__inference__traced_save_2833
file_prefix5
1savev2_block1_residual_kernel_read_readvariableop3
/savev2_block1_residual_bias_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop5
1savev2_block2_residual_kernel_read_readvariableop3
/savev2_block2_residual_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Ά
value¬B©#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH³
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Κ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_block1_residual_kernel_read_readvariableop/savev2_block1_residual_bias_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop1savev2_block2_residual_kernel_read_readvariableop/savev2_block2_residual_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *1
dtypes'
%2#	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:³
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*
_input_shapesχ
τ: :@:@:@@:@:@@:@:@:@:@:@:@ : :  : :  : : : : : :	 ::	:: : : : : : ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
:@: 

_output_shapes
:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:($
"
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@:($
"
_output_shapes
:@ : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	 :!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
::  

_output_shapes
:: !

_output_shapes
:: "

_output_shapes
::#

_output_shapes
: 
ζ
 
.__inference_block1_residual_layer_call_fn_2319

inputs
unknown:@
	unknown_0:@
identity’StatefulPartitionedCallε
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_residual_layer_call_and_return_conditional_losses_1159s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????5@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
I
-__inference_block1_MaxPool_layer_call_fn_2401

inputs
identityΛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_block1_MaxPool_layer_call_and_return_conditional_losses_955v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
ϋ%
θ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1126

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ’
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
Ϋ
Ο
4__inference_batch_normalization_1_layer_call_fn_2601

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1079|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs


+__inference_BadWordModel_layer_call_fn_2018

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@ 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:	 

unknown_20:	

unknown_21:	

unknown_22:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1615o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
ϋ%
θ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_2668

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ’
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
Ν
d
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_1052

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????¦
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
 

ψ
F__inference_output_layer_layer_call_and_return_conditional_losses_1340

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ω
Ο
4__inference_batch_normalization_1_layer_call_fn_2614

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1126|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
Ώ

$__inference_dense_layer_call_fn_2677

inputs
unknown:	 
	unknown_0:	
identity’StatefulPartitionedCallΨ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1323p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
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
Ι

F__inference_block2_Conv2_layer_call_and_return_conditional_losses_2563

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ¬
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
ω%
ζ
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1029

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????@s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ’
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????@o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
Ι

F__inference_block2_Conv2_layer_call_and_return_conditional_losses_1286

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ¬
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs

¬
M__inference_batch_normalization_layer_call_and_return_conditional_losses_2455

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????@o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
½
U
)__inference_block1_add_layer_call_fn_2390
inputs_0
inputs_1
identityΓ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block1_add_layer_call_and_return_conditional_losses_1215d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????5@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:?????????5@:?????????5@:U Q
+
_output_shapes
:?????????5@
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:?????????5@
"
_user_specified_name
inputs_1
υ

I__inference_block2_residual_layer_call_and_return_conditional_losses_2513

inputsA
+conv1d_expanddims_1_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ ­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:????????? 
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
έ

+__inference_block1_Conv2_layer_call_fn_2368

inputs
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallβ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv2_layer_call_and_return_conditional_losses_1203s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????5@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????5@
 
_user_specified_nameinputs
ρH

F__inference_BadWordModel_layer_call_and_return_conditional_losses_1855
input_layer+
block1_residual_1790:@"
block1_residual_1792:@'
block1_conv1_1795:@@
block1_conv1_1797:@'
block1_conv2_1800:@@
block1_conv2_1802:@&
batch_normalization_1807:@&
batch_normalization_1809:@&
batch_normalization_1811:@&
batch_normalization_1813:@*
block2_residual_1816:@ "
block2_residual_1818: '
block2_conv1_1821:  
block2_conv1_1823: '
block2_conv2_1826:  
block2_conv2_1828: (
batch_normalization_1_1833: (
batch_normalization_1_1835: (
batch_normalization_1_1837: (
batch_normalization_1_1839: 

dense_1844:	 

dense_1846:	$
output_layer_1849:	
output_layer_1851:
identity’+batch_normalization/StatefulPartitionedCall’-batch_normalization_1/StatefulPartitionedCall’$block1_Conv1/StatefulPartitionedCall’$block1_Conv2/StatefulPartitionedCall’'block1_residual/StatefulPartitionedCall’$block2_Conv1/StatefulPartitionedCall’$block2_Conv2/StatefulPartitionedCall’'block2_residual/StatefulPartitionedCall’dense/StatefulPartitionedCall’$output_layer/StatefulPartitionedCall
'block1_residual/StatefulPartitionedCallStatefulPartitionedCallinput_layerblock1_residual_1790block1_residual_1792*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_residual_layer_call_and_return_conditional_losses_1159«
$block1_Conv1/StatefulPartitionedCallStatefulPartitionedCall0block1_residual/StatefulPartitionedCall:output:0block1_conv1_1795block1_conv1_1797*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv1_layer_call_and_return_conditional_losses_1181¨
$block1_Conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_Conv1/StatefulPartitionedCall:output:0block1_conv2_1800block1_conv2_1802*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv2_layer_call_and_return_conditional_losses_1203
block1_add/PartitionedCallPartitionedCall0block1_residual/StatefulPartitionedCall:output:0-block1_Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block1_add_layer_call_and_return_conditional_losses_1215ε
block1_MaxPool/PartitionedCallPartitionedCall#block1_add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_block1_MaxPool_layer_call_and_return_conditional_losses_955τ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'block1_MaxPool/PartitionedCall:output:0batch_normalization_1807batch_normalization_1809batch_normalization_1811batch_normalization_1813*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1029»
'block2_residual/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0block2_residual_1816block2_residual_1818*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_residual_layer_call_and_return_conditional_losses_1242«
$block2_Conv1/StatefulPartitionedCallStatefulPartitionedCall0block2_residual/StatefulPartitionedCall:output:0block2_conv1_1821block2_conv1_1823*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv1_layer_call_and_return_conditional_losses_1264¨
$block2_Conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_Conv1/StatefulPartitionedCall:output:0block2_conv2_1826block2_conv2_1828*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv2_layer_call_and_return_conditional_losses_1286
block2_add/PartitionedCallPartitionedCall0block2_residual/StatefulPartitionedCall:output:0-block2_Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block2_add_layer_call_and_return_conditional_losses_1298ζ
block2_MaxPool/PartitionedCallPartitionedCall#block2_add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_1052
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall'block2_MaxPool/PartitionedCall:output:0batch_normalization_1_1833batch_normalization_1_1835batch_normalization_1_1837batch_normalization_1_1839*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1126g
%tf_op_layer_Sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Γ
tf_op_layer_Sum/SumSum6batch_normalization_1/StatefulPartitionedCall:output:0.tf_op_layer_Sum/Sum/reduction_indices:output:0*
T0*
_cloned(*'
_output_shapes
:????????? ψ
dense/StatefulPartitionedCallStatefulPartitionedCalltf_op_layer_Sum/Sum:output:0
dense_1844
dense_1846*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1323
$output_layer/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0output_layer_1849output_layer_1851*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_1340|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Ϋ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall%^block1_Conv1/StatefulPartitionedCall%^block1_Conv2/StatefulPartitionedCall(^block1_residual/StatefulPartitionedCall%^block2_Conv1/StatefulPartitionedCall%^block2_Conv2/StatefulPartitionedCall(^block2_residual/StatefulPartitionedCall^dense/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2L
$block1_Conv1/StatefulPartitionedCall$block1_Conv1/StatefulPartitionedCall2L
$block1_Conv2/StatefulPartitionedCall$block1_Conv2/StatefulPartitionedCall2R
'block1_residual/StatefulPartitionedCall'block1_residual/StatefulPartitionedCall2L
$block2_Conv1/StatefulPartitionedCall$block2_Conv1/StatefulPartitionedCall2L
$block2_Conv2/StatefulPartitionedCall$block2_Conv2/StatefulPartitionedCall2R
'block2_residual/StatefulPartitionedCall'block2_residual/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:Y U
,
_output_shapes
:?????????<
%
_user_specified_nameinput_layer
βH

F__inference_BadWordModel_layer_call_and_return_conditional_losses_1615

inputs+
block1_residual_1550:@"
block1_residual_1552:@'
block1_conv1_1555:@@
block1_conv1_1557:@'
block1_conv2_1560:@@
block1_conv2_1562:@&
batch_normalization_1567:@&
batch_normalization_1569:@&
batch_normalization_1571:@&
batch_normalization_1573:@*
block2_residual_1576:@ "
block2_residual_1578: '
block2_conv1_1581:  
block2_conv1_1583: '
block2_conv2_1586:  
block2_conv2_1588: (
batch_normalization_1_1593: (
batch_normalization_1_1595: (
batch_normalization_1_1597: (
batch_normalization_1_1599: 

dense_1604:	 

dense_1606:	$
output_layer_1609:	
output_layer_1611:
identity’+batch_normalization/StatefulPartitionedCall’-batch_normalization_1/StatefulPartitionedCall’$block1_Conv1/StatefulPartitionedCall’$block1_Conv2/StatefulPartitionedCall’'block1_residual/StatefulPartitionedCall’$block2_Conv1/StatefulPartitionedCall’$block2_Conv2/StatefulPartitionedCall’'block2_residual/StatefulPartitionedCall’dense/StatefulPartitionedCall’$output_layer/StatefulPartitionedCall
'block1_residual/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_residual_1550block1_residual_1552*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_residual_layer_call_and_return_conditional_losses_1159«
$block1_Conv1/StatefulPartitionedCallStatefulPartitionedCall0block1_residual/StatefulPartitionedCall:output:0block1_conv1_1555block1_conv1_1557*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv1_layer_call_and_return_conditional_losses_1181¨
$block1_Conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_Conv1/StatefulPartitionedCall:output:0block1_conv2_1560block1_conv2_1562*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv2_layer_call_and_return_conditional_losses_1203
block1_add/PartitionedCallPartitionedCall0block1_residual/StatefulPartitionedCall:output:0-block1_Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block1_add_layer_call_and_return_conditional_losses_1215ε
block1_MaxPool/PartitionedCallPartitionedCall#block1_add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_block1_MaxPool_layer_call_and_return_conditional_losses_955τ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'block1_MaxPool/PartitionedCall:output:0batch_normalization_1567batch_normalization_1569batch_normalization_1571batch_normalization_1573*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1029»
'block2_residual/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0block2_residual_1576block2_residual_1578*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_residual_layer_call_and_return_conditional_losses_1242«
$block2_Conv1/StatefulPartitionedCallStatefulPartitionedCall0block2_residual/StatefulPartitionedCall:output:0block2_conv1_1581block2_conv1_1583*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv1_layer_call_and_return_conditional_losses_1264¨
$block2_Conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_Conv1/StatefulPartitionedCall:output:0block2_conv2_1586block2_conv2_1588*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv2_layer_call_and_return_conditional_losses_1286
block2_add/PartitionedCallPartitionedCall0block2_residual/StatefulPartitionedCall:output:0-block2_Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block2_add_layer_call_and_return_conditional_losses_1298ζ
block2_MaxPool/PartitionedCallPartitionedCall#block2_add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_1052
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall'block2_MaxPool/PartitionedCall:output:0batch_normalization_1_1593batch_normalization_1_1595batch_normalization_1_1597batch_normalization_1_1599*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1126g
%tf_op_layer_Sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Γ
tf_op_layer_Sum/SumSum6batch_normalization_1/StatefulPartitionedCall:output:0.tf_op_layer_Sum/Sum/reduction_indices:output:0*
T0*
_cloned(*'
_output_shapes
:????????? ψ
dense/StatefulPartitionedCallStatefulPartitionedCalltf_op_layer_Sum/Sum:output:0
dense_1604
dense_1606*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1323
$output_layer/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0output_layer_1609output_layer_1611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_1340|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Ϋ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall%^block1_Conv1/StatefulPartitionedCall%^block1_Conv2/StatefulPartitionedCall(^block1_residual/StatefulPartitionedCall%^block2_Conv1/StatefulPartitionedCall%^block2_Conv2/StatefulPartitionedCall(^block2_residual/StatefulPartitionedCall^dense/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2L
$block1_Conv1/StatefulPartitionedCall$block1_Conv1/StatefulPartitionedCall2L
$block1_Conv2/StatefulPartitionedCall$block1_Conv2/StatefulPartitionedCall2R
'block1_residual/StatefulPartitionedCall'block1_residual/StatefulPartitionedCall2L
$block2_Conv1/StatefulPartitionedCall$block2_Conv1/StatefulPartitionedCall2L
$block2_Conv2/StatefulPartitionedCall$block2_Conv2/StatefulPartitionedCall2R
'block2_residual/StatefulPartitionedCall'block2_residual/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
γ

.__inference_block2_residual_layer_call_fn_2498

inputs
unknown:@ 
	unknown_0: 
identity’StatefulPartitionedCallε
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_residual_layer_call_and_return_conditional_losses_1242s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
έ

+__inference_block2_Conv1_layer_call_fn_2522

inputs
unknown:  
	unknown_0: 
identity’StatefulPartitionedCallβ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv1_layer_call_and_return_conditional_losses_1264s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
Ω
p
D__inference_block1_add_layer_call_and_return_conditional_losses_2396
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:?????????5@S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:?????????5@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:?????????5@:?????????5@:U Q
+
_output_shapes
:?????????5@
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:?????????5@
"
_user_specified_name
inputs_1

I
-__inference_block2_MaxPool_layer_call_fn_2580

inputs
identityΜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_1052v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
ϋ

I__inference_block1_residual_layer_call_and_return_conditional_losses_1159

inputsB
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????<
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ‘
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????5@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
Ν
d
H__inference_block1_MaxPool_layer_call_and_return_conditional_losses_2409

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????¦
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides

SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
έ

+__inference_block1_Conv1_layer_call_fn_2343

inputs
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallβ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????5@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_Conv1_layer_call_and_return_conditional_losses_1181s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????5@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????5@
 
_user_specified_nameinputs
½
U
)__inference_block2_add_layer_call_fn_2569
inputs_0
inputs_1
identityΓ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_block2_add_layer_call_and_return_conditional_losses_1298d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:????????? :????????? :U Q
+
_output_shapes
:????????? 
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:????????? 
"
_user_specified_name
inputs_1
Ω
p
D__inference_block2_add_layer_call_and_return_conditional_losses_2575
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:????????? S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:????????? :????????? :U Q
+
_output_shapes
:????????? 
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:????????? 
"
_user_specified_name
inputs_1
Ώ
ύ
 __inference__traced_restore_2945
file_prefix>
'assignvariableop_block1_residual_kernel:@5
'assignvariableop_1_block1_residual_bias:@<
&assignvariableop_2_block1_conv1_kernel:@@2
$assignvariableop_3_block1_conv1_bias:@<
&assignvariableop_4_block1_conv2_kernel:@@2
$assignvariableop_5_block1_conv2_bias:@:
,assignvariableop_6_batch_normalization_gamma:@9
+assignvariableop_7_batch_normalization_beta:@@
2assignvariableop_8_batch_normalization_moving_mean:@D
6assignvariableop_9_batch_normalization_moving_variance:@@
*assignvariableop_10_block2_residual_kernel:@ 6
(assignvariableop_11_block2_residual_bias: =
'assignvariableop_12_block2_conv1_kernel:  3
%assignvariableop_13_block2_conv1_bias: =
'assignvariableop_14_block2_conv2_kernel:  3
%assignvariableop_15_block2_conv2_bias: =
/assignvariableop_16_batch_normalization_1_gamma: <
.assignvariableop_17_batch_normalization_1_beta: C
5assignvariableop_18_batch_normalization_1_moving_mean: G
9assignvariableop_19_batch_normalization_1_moving_variance: 3
 assignvariableop_20_dense_kernel:	 -
assignvariableop_21_dense_bias:	:
'assignvariableop_22_output_layer_kernel:	3
%assignvariableop_23_output_layer_bias:'
assignvariableop_24_iteration:	 +
!assignvariableop_25_learning_rate: %
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 2
$assignvariableop_30_true_positives_1:1
#assignvariableop_31_false_negatives:0
"assignvariableop_32_true_positives:1
#assignvariableop_33_false_positives:
identity_35’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Ά
value¬B©#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Π
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*’
_output_shapes
:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ί
AssignVariableOpAssignVariableOp'assignvariableop_block1_residual_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ύ
AssignVariableOp_1AssignVariableOp'assignvariableop_1_block1_residual_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block1_conv1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block1_conv1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_4AssignVariableOp&assignvariableop_4_block1_conv2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_5AssignVariableOp$assignvariableop_5_block1_conv2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Γ
AssignVariableOp_6AssignVariableOp,assignvariableop_6_batch_normalization_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Β
AssignVariableOp_7AssignVariableOp+assignvariableop_7_batch_normalization_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ι
AssignVariableOp_8AssignVariableOp2assignvariableop_8_batch_normalization_moving_meanIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ν
AssignVariableOp_9AssignVariableOp6assignvariableop_9_batch_normalization_moving_varianceIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Γ
AssignVariableOp_10AssignVariableOp*assignvariableop_10_block2_residual_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_11AssignVariableOp(assignvariableop_11_block2_residual_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ΐ
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block2_conv1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ύ
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block2_conv1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ΐ
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block2_conv2_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ύ
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block2_conv2_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Θ
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_1_gammaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Η
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_1_betaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ξ
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_1_moving_meanIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_1_moving_varianceIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ή
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_21AssignVariableOpassignvariableop_21_dense_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ΐ
AssignVariableOp_22AssignVariableOp'assignvariableop_22_output_layer_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ύ
AssignVariableOp_23AssignVariableOp%assignvariableop_23_output_layer_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:Ά
AssignVariableOp_24AssignVariableOpassignvariableop_24_iterationIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ί
AssignVariableOp_25AssignVariableOp!assignvariableop_25_learning_rateIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:΄
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:΄
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_30AssignVariableOp$assignvariableop_30_true_positives_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ό
AssignVariableOp_31AssignVariableOp#assignvariableop_31_false_negativesIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_32AssignVariableOp"assignvariableop_32_true_positivesIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ό
AssignVariableOp_33AssignVariableOp#assignvariableop_33_false_positivesIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 »
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_35IdentityIdentity_34:output:0^NoOp_1*
T0*
_output_shapes
: ¨
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_35Identity_35:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_33AssignVariableOp_332(
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

?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1079

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
σ
?
"__inference_signature_wrapper_1912
input_layer
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@ 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:	 

unknown_20:	

unknown_21:	

unknown_22:
identity’StatefulPartitionedCallζ
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__wrapped_model_943o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:?????????<
%
_user_specified_nameinput_layer
Ι

F__inference_block1_Conv2_layer_call_and_return_conditional_losses_1203

inputsA
+conv1d_expanddims_1_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@¬
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????5@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????5@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????5@
 
_user_specified_nameinputs

?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_2634

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
Ι

F__inference_block2_Conv1_layer_call_and_return_conditional_losses_1264

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ¬
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs


ς
?__inference_dense_layer_call_and_return_conditional_losses_1323

inputs1
matmul_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
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
Ι

F__inference_block1_Conv2_layer_call_and_return_conditional_losses_2384

inputsA
+conv1d_expanddims_1_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@¬
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????5@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????5@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????5@
 
_user_specified_nameinputs
ϋ

I__inference_block1_residual_layer_call_and_return_conditional_losses_2334

inputsB
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????<
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ‘
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????5@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
Ι

F__inference_block1_Conv1_layer_call_and_return_conditional_losses_2359

inputsA
+conv1d_expanddims_1_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@¬
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????5@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????5@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????5@
 
_user_specified_nameinputs
ζ
α
F__inference_BadWordModel_layer_call_and_return_conditional_losses_2310

inputsR
;block1_residual_conv1d_expanddims_1_readvariableop_resource:@=
/block1_residual_biasadd_readvariableop_resource:@N
8block1_conv1_conv1d_expanddims_1_readvariableop_resource:@@:
,block1_conv1_biasadd_readvariableop_resource:@N
8block1_conv2_conv1d_expanddims_1_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@I
;batch_normalization_assignmovingavg_readvariableop_resource:@K
=batch_normalization_assignmovingavg_1_readvariableop_resource:@G
9batch_normalization_batchnorm_mul_readvariableop_resource:@C
5batch_normalization_batchnorm_readvariableop_resource:@Q
;block2_residual_conv1d_expanddims_1_readvariableop_resource:@ =
/block2_residual_biasadd_readvariableop_resource: N
8block2_conv1_conv1d_expanddims_1_readvariableop_resource:  :
,block2_conv1_biasadd_readvariableop_resource: N
8block2_conv2_conv1d_expanddims_1_readvariableop_resource:  :
,block2_conv2_biasadd_readvariableop_resource: K
=batch_normalization_1_assignmovingavg_readvariableop_resource: M
?batch_normalization_1_assignmovingavg_1_readvariableop_resource: I
;batch_normalization_1_batchnorm_mul_readvariableop_resource: E
7batch_normalization_1_batchnorm_readvariableop_resource: 7
$dense_matmul_readvariableop_resource:	 4
%dense_biasadd_readvariableop_resource:	>
+output_layer_matmul_readvariableop_resource:	:
,output_layer_biasadd_readvariableop_resource:
identity’#batch_normalization/AssignMovingAvg’2batch_normalization/AssignMovingAvg/ReadVariableOp’%batch_normalization/AssignMovingAvg_1’4batch_normalization/AssignMovingAvg_1/ReadVariableOp’,batch_normalization/batchnorm/ReadVariableOp’0batch_normalization/batchnorm/mul/ReadVariableOp’%batch_normalization_1/AssignMovingAvg’4batch_normalization_1/AssignMovingAvg/ReadVariableOp’'batch_normalization_1/AssignMovingAvg_1’6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp’.batch_normalization_1/batchnorm/ReadVariableOp’2batch_normalization_1/batchnorm/mul/ReadVariableOp’#block1_Conv1/BiasAdd/ReadVariableOp’/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp’#block1_Conv2/BiasAdd/ReadVariableOp’/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp’&block1_residual/BiasAdd/ReadVariableOp’2block1_residual/Conv1D/ExpandDims_1/ReadVariableOp’#block2_Conv1/BiasAdd/ReadVariableOp’/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp’#block2_Conv2/BiasAdd/ReadVariableOp’/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp’&block2_residual/BiasAdd/ReadVariableOp’2block2_residual/Conv1D/ExpandDims_1/ReadVariableOp’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOp’#output_layer/BiasAdd/ReadVariableOp’"output_layer/MatMul/ReadVariableOpp
%block1_residual/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????’
!block1_residual/Conv1D/ExpandDims
ExpandDimsinputs.block1_residual/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????<³
2block1_residual/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;block1_residual_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@*
dtype0i
'block1_residual/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ρ
#block1_residual/Conv1D/ExpandDims_1
ExpandDims:block1_residual/Conv1D/ExpandDims_1/ReadVariableOp:value:00block1_residual/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@έ
block1_residual/Conv1DConv2D*block1_residual/Conv1D/ExpandDims:output:0,block1_residual/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingVALID*
strides
 
block1_residual/Conv1D/SqueezeSqueezeblock1_residual/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????
&block1_residual/BiasAdd/ReadVariableOpReadVariableOp/block1_residual_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0±
block1_residual/BiasAddBiasAdd'block1_residual/Conv1D/Squeeze:output:0.block1_residual/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@m
"block1_Conv1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????΅
block1_Conv1/Conv1D/ExpandDims
ExpandDims block1_residual/BiasAdd:output:0+block1_Conv1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@¬
/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8block1_conv1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0f
$block1_Conv1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Η
 block1_Conv1/Conv1D/ExpandDims_1
ExpandDims7block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp:value:0-block1_Conv1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@Σ
block1_Conv1/Conv1DConv2D'block1_Conv1/Conv1D/ExpandDims:output:0)block1_Conv1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides

block1_Conv1/Conv1D/SqueezeSqueezeblock1_Conv1/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????
#block1_Conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¨
block1_Conv1/BiasAddBiasAdd$block1_Conv1/Conv1D/Squeeze:output:0+block1_Conv1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@n
block1_Conv1/ReluRelublock1_Conv1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????5@m
"block1_Conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????΄
block1_Conv2/Conv1D/ExpandDims
ExpandDimsblock1_Conv1/Relu:activations:0+block1_Conv2/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@¬
/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8block1_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0f
$block1_Conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Η
 block1_Conv2/Conv1D/ExpandDims_1
ExpandDims7block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:0-block1_Conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@Σ
block1_Conv2/Conv1DConv2D'block1_Conv2/Conv1D/ExpandDims:output:0)block1_Conv2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides

block1_Conv2/Conv1D/SqueezeSqueezeblock1_Conv2/Conv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????
#block1_Conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¨
block1_Conv2/BiasAddBiasAdd$block1_Conv2/Conv1D/Squeeze:output:0+block1_Conv2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@n
block1_Conv2/ReluRelublock1_Conv2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????5@
block1_add/addAddV2 block1_residual/BiasAdd:output:0block1_Conv2/Relu:activations:0*
T0*+
_output_shapes
:?????????5@_
block1_MaxPool/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
block1_MaxPool/ExpandDims
ExpandDimsblock1_add/add:z:0&block1_MaxPool/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@²
block1_MaxPool/MaxPoolMaxPool"block1_MaxPool/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

block1_MaxPool/SqueezeSqueezeblock1_MaxPool/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims

2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Δ
 batch_normalization/moments/meanMeanblock1_MaxPool/Squeeze:output:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*"
_output_shapes
:@Μ
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceblock1_MaxPool/Squeeze:output:01batch_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ή
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 n
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<ͺ
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0½
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes
:@΄
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@ό
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0p
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0Γ
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@Ί
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:­
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:@x
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:@¦
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0°
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@¨
#batch_normalization/batchnorm/mul_1Mulblock1_MaxPool/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@€
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:@
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0¬
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@²
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@p
%block2_residual/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????Β
!block2_residual/Conv1D/ExpandDims
ExpandDims'batch_normalization/batchnorm/add_1:z:0.block2_residual/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@²
2block2_residual/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;block2_residual_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype0i
'block2_residual/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Π
#block2_residual/Conv1D/ExpandDims_1
ExpandDims:block2_residual/Conv1D/ExpandDims_1/ReadVariableOp:value:00block2_residual/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ έ
block2_residual/Conv1DConv2D*block2_residual/Conv1D/ExpandDims:output:0,block2_residual/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
 
block2_residual/Conv1D/SqueezeSqueezeblock2_residual/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????
&block2_residual/BiasAdd/ReadVariableOpReadVariableOp/block2_residual_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0±
block2_residual/BiasAddBiasAdd'block2_residual/Conv1D/Squeeze:output:0.block2_residual/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? m
"block2_Conv1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????΅
block2_Conv1/Conv1D/ExpandDims
ExpandDims block2_residual/BiasAdd:output:0+block2_Conv1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? ¬
/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8block2_conv1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0f
$block2_Conv1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Η
 block2_Conv1/Conv1D/ExpandDims_1
ExpandDims7block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp:value:0-block2_Conv1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  Σ
block2_Conv1/Conv1DConv2D'block2_Conv1/Conv1D/ExpandDims:output:0)block2_Conv1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

block2_Conv1/Conv1D/SqueezeSqueezeblock2_Conv1/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????
#block2_Conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¨
block2_Conv1/BiasAddBiasAdd$block2_Conv1/Conv1D/Squeeze:output:0+block2_Conv1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? n
block2_Conv1/ReluRelublock2_Conv1/BiasAdd:output:0*
T0*+
_output_shapes
:????????? m
"block2_Conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????΄
block2_Conv2/Conv1D/ExpandDims
ExpandDimsblock2_Conv1/Relu:activations:0+block2_Conv2/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? ¬
/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8block2_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0f
$block2_Conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Η
 block2_Conv2/Conv1D/ExpandDims_1
ExpandDims7block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:0-block2_Conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  Σ
block2_Conv2/Conv1DConv2D'block2_Conv2/Conv1D/ExpandDims:output:0)block2_Conv2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

block2_Conv2/Conv1D/SqueezeSqueezeblock2_Conv2/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

ύ????????
#block2_Conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¨
block2_Conv2/BiasAddBiasAdd$block2_Conv2/Conv1D/Squeeze:output:0+block2_Conv2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? n
block2_Conv2/ReluRelublock2_Conv2/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 
block2_add/addAddV2 block2_residual/BiasAdd:output:0block2_Conv2/Relu:activations:0*
T0*+
_output_shapes
:????????? _
block2_MaxPool/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
block2_MaxPool/ExpandDims
ExpandDimsblock2_add/add:z:0&block2_MaxPool/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? ²
block2_MaxPool/MaxPoolMaxPool"block2_MaxPool/ExpandDims:output:0*/
_output_shapes
:?????????	 *
ksize
*
paddingVALID*
strides

block2_MaxPool/SqueezeSqueezeblock2_MaxPool/MaxPool:output:0*
T0*+
_output_shapes
:?????????	 *
squeeze_dims

4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Θ
"batch_normalization_1/moments/meanMeanblock2_MaxPool/Squeeze:output:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*"
_output_shapes
: Π
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferenceblock2_MaxPool/Squeeze:output:03batch_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????	 
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       δ
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
  
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 p
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0Γ
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes
: Ί
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<²
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0Ι
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes
: ΐ
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:³
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: |
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: ͺ
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ά
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ¬
%batch_normalization_1/batchnorm/mul_1Mulblock2_MaxPool/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????	 ͺ
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: ’
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0²
#batch_normalization_1/batchnorm/subSub6batch_normalization_1/batchnorm/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: Έ
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????	 g
%tf_op_layer_Sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Ά
tf_op_layer_Sum/SumSum)batch_normalization_1/batchnorm/add_1:z:0.tf_op_layer_Sum/Sum/reduction_indices:output:0*
T0*
_cloned(*'
_output_shapes
:????????? 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
dense/MatMulMatMultf_op_layer_Sum/Sum:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
output_layer/MatMulMatMuldense/Relu:activations:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
output_layer/SigmoidSigmoidoutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????g
IdentityIdentityoutput_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp3^batch_normalization_1/batchnorm/mul/ReadVariableOp$^block1_Conv1/BiasAdd/ReadVariableOp0^block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp$^block1_Conv2/BiasAdd/ReadVariableOp0^block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp'^block1_residual/BiasAdd/ReadVariableOp3^block1_residual/Conv1D/ExpandDims_1/ReadVariableOp$^block2_Conv1/BiasAdd/ReadVariableOp0^block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp$^block2_Conv2/BiasAdd/ReadVariableOp0^block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp'^block2_residual/BiasAdd/ReadVariableOp3^block2_residual/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????<: : : : : : : : : : : : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2J
#block1_Conv1/BiasAdd/ReadVariableOp#block1_Conv1/BiasAdd/ReadVariableOp2b
/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp/block1_Conv1/Conv1D/ExpandDims_1/ReadVariableOp2J
#block1_Conv2/BiasAdd/ReadVariableOp#block1_Conv2/BiasAdd/ReadVariableOp2b
/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp/block1_Conv2/Conv1D/ExpandDims_1/ReadVariableOp2P
&block1_residual/BiasAdd/ReadVariableOp&block1_residual/BiasAdd/ReadVariableOp2h
2block1_residual/Conv1D/ExpandDims_1/ReadVariableOp2block1_residual/Conv1D/ExpandDims_1/ReadVariableOp2J
#block2_Conv1/BiasAdd/ReadVariableOp#block2_Conv1/BiasAdd/ReadVariableOp2b
/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp/block2_Conv1/Conv1D/ExpandDims_1/ReadVariableOp2J
#block2_Conv2/BiasAdd/ReadVariableOp#block2_Conv2/BiasAdd/ReadVariableOp2b
/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp/block2_Conv2/Conv1D/ExpandDims_1/ReadVariableOp2P
&block2_residual/BiasAdd/ReadVariableOp&block2_residual/BiasAdd/ReadVariableOp2h
2block2_residual/Conv1D/ExpandDims_1/ReadVariableOp2block2_residual/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:T P
,
_output_shapes
:?????????<
 
_user_specified_nameinputs
Ι

F__inference_block1_Conv1_layer_call_and_return_conditional_losses_1181

inputsA
+conv1d_expanddims_1_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ύ????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????5@
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@¬
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????5@*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????5@*
squeeze_dims

ύ????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????5@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????5@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????5@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????5@
 
_user_specified_nameinputs
έ

+__inference_block2_Conv2_layer_call_fn_2547

inputs
unknown:  
	unknown_0: 
identity’StatefulPartitionedCallβ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_Conv2_layer_call_and_return_conditional_losses_1286s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs

«
L__inference_batch_normalization_layer_call_and_return_conditional_losses_982

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????@o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ό
serving_default¨
H
input_layer9
serving_default_input_layer:0?????????<@
output_layer0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:»Ϋ
½
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
έ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op"
_tf_keras_layer
έ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias
 +_jit_compiled_convolution_op"
_tf_keras_layer
έ
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op"
_tf_keras_layer
₯
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
κ
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance"
_tf_keras_layer
έ
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias
 T_jit_compiled_convolution_op"
_tf_keras_layer
έ
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op"
_tf_keras_layer
έ
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias
 f_jit_compiled_convolution_op"
_tf_keras_layer
₯
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
κ
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
yaxis
	zgamma
{beta
|moving_mean
}moving_variance"
_tf_keras_layer
9
~	keras_api
_defun_call"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
Ϊ
 0
!1
)2
*3
24
35
H6
I7
J8
K9
R10
S11
[12
\13
d14
e15
z16
{17
|18
}19
20
21
22
23"
trackable_list_wrapper
Ί
 0
!1
)2
*3
24
35
H6
I7
R8
S9
[10
\11
d12
e13
z14
{15
16
17
18
19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ο
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ι
trace_0
trace_1
trace_2
trace_32φ
+__inference_BadWordModel_layer_call_fn_1398
+__inference_BadWordModel_layer_call_fn_1965
+__inference_BadWordModel_layer_call_fn_2018
+__inference_BadWordModel_layer_call_fn_1719Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0ztrace_1ztrace_2ztrace_3
Υ
trace_0
trace_1
trace_2
trace_32β
F__inference_BadWordModel_layer_call_and_return_conditional_losses_2150
F__inference_BadWordModel_layer_call_and_return_conditional_losses_2310
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1787
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1855Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ΝBΚ
__inference__wrapped_model_943input_layer"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
n

_variables
_iterations
_learning_rate
 _update_step_xla"
experimentalOptimizer
-
‘serving_default"
signature_map
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
’non_trainable_variables
£layers
€metrics
 ₯layer_regularization_losses
¦layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
τ
§trace_02Υ
.__inference_block1_residual_layer_call_fn_2319’
²
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
annotationsͺ *
 z§trace_0

¨trace_02π
I__inference_block1_residual_layer_call_and_return_conditional_losses_2334’
²
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
annotationsͺ *
 z¨trace_0
-:+@2block1_residual/kernel
": @2block1_residual/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
©non_trainable_variables
ͺlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
ρ
?trace_02?
+__inference_block1_Conv1_layer_call_fn_2343’
²
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
annotationsͺ *
 z?trace_0

―trace_02ν
F__inference_block1_Conv1_layer_call_and_return_conditional_losses_2359’
²
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
annotationsͺ *
 z―trace_0
):'@@2block1_Conv1/kernel
:@2block1_Conv1/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
²
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
΄layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
ρ
΅trace_02?
+__inference_block1_Conv2_layer_call_fn_2368’
²
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
annotationsͺ *
 z΅trace_0

Άtrace_02ν
F__inference_block1_Conv2_layer_call_and_return_conditional_losses_2384’
²
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
annotationsͺ *
 zΆtrace_0
):'@@2block1_Conv2/kernel
:@2block1_Conv2/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
·non_trainable_variables
Έlayers
Ήmetrics
 Ίlayer_regularization_losses
»layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
ο
Όtrace_02Π
)__inference_block1_add_layer_call_fn_2390’
²
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
annotationsͺ *
 zΌtrace_0

½trace_02λ
D__inference_block1_add_layer_call_and_return_conditional_losses_2396’
²
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
annotationsͺ *
 z½trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ύnon_trainable_variables
Ώlayers
ΐmetrics
 Αlayer_regularization_losses
Βlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
σ
Γtrace_02Τ
-__inference_block1_MaxPool_layer_call_fn_2401’
²
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
annotationsͺ *
 zΓtrace_0

Δtrace_02ο
H__inference_block1_MaxPool_layer_call_and_return_conditional_losses_2409’
²
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
annotationsͺ *
 zΔtrace_0
<
H0
I1
J2
K3"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Εnon_trainable_variables
Ζlayers
Ηmetrics
 Θlayer_regularization_losses
Ιlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
ε
Κtrace_0
Λtrace_12ͺ
2__inference_batch_normalization_layer_call_fn_2422
2__inference_batch_normalization_layer_call_fn_2435Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΚtrace_0zΛtrace_1

Μtrace_0
Νtrace_12ΰ
M__inference_batch_normalization_layer_call_and_return_conditional_losses_2455
M__inference_batch_normalization_layer_call_and_return_conditional_losses_2489Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΜtrace_0zΝtrace_1
 "
trackable_list_wrapper
':%@2batch_normalization/gamma
&:$@2batch_normalization/beta
/:-@ (2batch_normalization/moving_mean
3:1@ (2#batch_normalization/moving_variance
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ξnon_trainable_variables
Οlayers
Πmetrics
 Ρlayer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
τ
Σtrace_02Υ
.__inference_block2_residual_layer_call_fn_2498’
²
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
annotationsͺ *
 zΣtrace_0

Τtrace_02π
I__inference_block2_residual_layer_call_and_return_conditional_losses_2513’
²
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
annotationsͺ *
 zΤtrace_0
,:*@ 2block2_residual/kernel
":  2block2_residual/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
ρ
Ϊtrace_02?
+__inference_block2_Conv1_layer_call_fn_2522’
²
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
annotationsͺ *
 zΪtrace_0

Ϋtrace_02ν
F__inference_block2_Conv1_layer_call_and_return_conditional_losses_2538’
²
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
annotationsͺ *
 zΫtrace_0
):'  2block2_Conv1/kernel
: 2block2_Conv1/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
άnon_trainable_variables
έlayers
ήmetrics
 ίlayer_regularization_losses
ΰlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
ρ
αtrace_02?
+__inference_block2_Conv2_layer_call_fn_2547’
²
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
annotationsͺ *
 zαtrace_0

βtrace_02ν
F__inference_block2_Conv2_layer_call_and_return_conditional_losses_2563’
²
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
annotationsͺ *
 zβtrace_0
):'  2block2_Conv2/kernel
: 2block2_Conv2/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
γnon_trainable_variables
δlayers
εmetrics
 ζlayer_regularization_losses
ηlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
ο
θtrace_02Π
)__inference_block2_add_layer_call_fn_2569’
²
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
annotationsͺ *
 zθtrace_0

ιtrace_02λ
D__inference_block2_add_layer_call_and_return_conditional_losses_2575’
²
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
annotationsͺ *
 zιtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
κnon_trainable_variables
λlayers
μmetrics
 νlayer_regularization_losses
ξlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
σ
οtrace_02Τ
-__inference_block2_MaxPool_layer_call_fn_2580’
²
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
annotationsͺ *
 zοtrace_0

πtrace_02ο
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_2588’
²
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
annotationsͺ *
 zπtrace_0
<
z0
{1
|2
}3"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ρnon_trainable_variables
ςlayers
σmetrics
 τlayer_regularization_losses
υlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
ι
φtrace_0
χtrace_12?
4__inference_batch_normalization_1_layer_call_fn_2601
4__inference_batch_normalization_1_layer_call_fn_2614Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zφtrace_0zχtrace_1

ψtrace_0
ωtrace_12δ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_2634
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_2668Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zψtrace_0zωtrace_1
 "
trackable_list_wrapper
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
"
_generic_user_object
¨2₯’
²
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
annotationsͺ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ϊnon_trainable_variables
ϋlayers
όmetrics
 ύlayer_regularization_losses
ώlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
κ
?trace_02Λ
$__inference_dense_layer_call_fn_2677’
²
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
annotationsͺ *
 z?trace_0

trace_02ζ
?__inference_dense_layer_call_and_return_conditional_losses_2688’
²
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
annotationsͺ *
 ztrace_0
:	 2dense/kernel
:2
dense/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ρ
trace_02?
+__inference_output_layer_layer_call_fn_2697’
²
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
annotationsͺ *
 ztrace_0

trace_02ν
F__inference_output_layer_layer_call_and_return_conditional_losses_2708’
²
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
annotationsͺ *
 ztrace_0
&:$	2output_layer/kernel
:2output_layer/bias
<
J0
K1
|2
}3"
trackable_list_wrapper

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
15"
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bώ
+__inference_BadWordModel_layer_call_fn_1398input_layer"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
+__inference_BadWordModel_layer_call_fn_1965inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
+__inference_BadWordModel_layer_call_fn_2018inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Bώ
+__inference_BadWordModel_layer_call_fn_1719input_layer"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_BadWordModel_layer_call_and_return_conditional_losses_2150inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_BadWordModel_layer_call_and_return_conditional_losses_2310inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1787input_layer"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1855input_layer"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
(
0"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
Ώ2ΌΉ
?²ͺ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
ΝBΚ
"__inference_signature_wrapper_1912input_layer"
²
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
annotationsͺ *
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
βBί
.__inference_block1_residual_layer_call_fn_2319inputs"’
²
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
annotationsͺ *
 
ύBϊ
I__inference_block1_residual_layer_call_and_return_conditional_losses_2334inputs"’
²
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
annotationsͺ *
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
ίBά
+__inference_block1_Conv1_layer_call_fn_2343inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_block1_Conv1_layer_call_and_return_conditional_losses_2359inputs"’
²
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
annotationsͺ *
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
ίBά
+__inference_block1_Conv2_layer_call_fn_2368inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_block1_Conv2_layer_call_and_return_conditional_losses_2384inputs"’
²
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
annotationsͺ *
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
ιBζ
)__inference_block1_add_layer_call_fn_2390inputs_0inputs_1"’
²
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
annotationsͺ *
 
B
D__inference_block1_add_layer_call_and_return_conditional_losses_2396inputs_0inputs_1"’
²
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
annotationsͺ *
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
αBή
-__inference_block1_MaxPool_layer_call_fn_2401inputs"’
²
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
annotationsͺ *
 
όBω
H__inference_block1_MaxPool_layer_call_and_return_conditional_losses_2409inputs"’
²
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
annotationsͺ *
 
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
2__inference_batch_normalization_layer_call_fn_2422inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
2__inference_batch_normalization_layer_call_fn_2435inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
M__inference_batch_normalization_layer_call_and_return_conditional_losses_2455inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
M__inference_batch_normalization_layer_call_and_return_conditional_losses_2489inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
βBί
.__inference_block2_residual_layer_call_fn_2498inputs"’
²
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
annotationsͺ *
 
ύBϊ
I__inference_block2_residual_layer_call_and_return_conditional_losses_2513inputs"’
²
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
annotationsͺ *
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
ίBά
+__inference_block2_Conv1_layer_call_fn_2522inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_block2_Conv1_layer_call_and_return_conditional_losses_2538inputs"’
²
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
annotationsͺ *
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
ίBά
+__inference_block2_Conv2_layer_call_fn_2547inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_block2_Conv2_layer_call_and_return_conditional_losses_2563inputs"’
²
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
annotationsͺ *
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
ιBζ
)__inference_block2_add_layer_call_fn_2569inputs_0inputs_1"’
²
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
annotationsͺ *
 
B
D__inference_block2_add_layer_call_and_return_conditional_losses_2575inputs_0inputs_1"’
²
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
annotationsͺ *
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
αBή
-__inference_block2_MaxPool_layer_call_fn_2580inputs"’
²
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
annotationsͺ *
 
όBω
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_2588inputs"’
²
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
annotationsͺ *
 
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
4__inference_batch_normalization_1_layer_call_fn_2601inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
4__inference_batch_normalization_1_layer_call_fn_2614inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 B
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_2634inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 B
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_2668inputs"Ώ
Ά²²
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
defaults’
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
ΨBΥ
$__inference_dense_layer_call_fn_2677inputs"’
²
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
annotationsͺ *
 
σBπ
?__inference_dense_layer_call_and_return_conditional_losses_2688inputs"’
²
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
annotationsͺ *
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
ίBά
+__inference_output_layer_layer_call_fn_2697inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_output_layer_layer_call_and_return_conditional_losses_2708inputs"’
²
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
annotationsͺ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
v
	variables
	keras_api

thresholds
true_positives
false_negatives"
_tf_keras_metric
v
	variables
	keras_api

thresholds
true_positives
false_positives"
_tf_keras_metric
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positivesΪ
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1787 !)*23KHJIRS[\de}z|{A’>
7’4
*'
input_layer?????????<
p 

 
ͺ ",’)
"
tensor_0?????????
 Ϊ
F__inference_BadWordModel_layer_call_and_return_conditional_losses_1855 !)*23JKHIRS[\de|}z{A’>
7’4
*'
input_layer?????????<
p

 
ͺ ",’)
"
tensor_0?????????
 Υ
F__inference_BadWordModel_layer_call_and_return_conditional_losses_2150 !)*23KHJIRS[\de}z|{<’9
2’/
%"
inputs?????????<
p 

 
ͺ ",’)
"
tensor_0?????????
 Υ
F__inference_BadWordModel_layer_call_and_return_conditional_losses_2310 !)*23JKHIRS[\de|}z{<’9
2’/
%"
inputs?????????<
p

 
ͺ ",’)
"
tensor_0?????????
 ΄
+__inference_BadWordModel_layer_call_fn_1398 !)*23KHJIRS[\de}z|{A’>
7’4
*'
input_layer?????????<
p 

 
ͺ "!
unknown?????????΄
+__inference_BadWordModel_layer_call_fn_1719 !)*23JKHIRS[\de|}z{A’>
7’4
*'
input_layer?????????<
p

 
ͺ "!
unknown??????????
+__inference_BadWordModel_layer_call_fn_1965 !)*23KHJIRS[\de}z|{<’9
2’/
%"
inputs?????????<
p 

 
ͺ "!
unknown??????????
+__inference_BadWordModel_layer_call_fn_2018 !)*23JKHIRS[\de|}z{<’9
2’/
%"
inputs?????????<
p

 
ͺ "!
unknown?????????Ή
__inference__wrapped_model_943 !)*23KHJIRS[\de}z|{9’6
/’,
*'
input_layer?????????<
ͺ ";ͺ8
6
output_layer&#
output_layer?????????Ϋ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_2634}z|{D’A
:’7
-*
inputs?????????????????? 
p 

 
ͺ "9’6
/,
tensor_0?????????????????? 
 Ϋ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_2668|}z{D’A
:’7
-*
inputs?????????????????? 
p

 
ͺ "9’6
/,
tensor_0?????????????????? 
 ΄
4__inference_batch_normalization_1_layer_call_fn_2601|}z|{D’A
:’7
-*
inputs?????????????????? 
p 

 
ͺ ".+
unknown?????????????????? ΄
4__inference_batch_normalization_1_layer_call_fn_2614||}z{D’A
:’7
-*
inputs?????????????????? 
p

 
ͺ ".+
unknown?????????????????? Ω
M__inference_batch_normalization_layer_call_and_return_conditional_losses_2455KHJID’A
:’7
-*
inputs??????????????????@
p 

 
ͺ "9’6
/,
tensor_0??????????????????@
 Ω
M__inference_batch_normalization_layer_call_and_return_conditional_losses_2489JKHID’A
:’7
-*
inputs??????????????????@
p

 
ͺ "9’6
/,
tensor_0??????????????????@
 ²
2__inference_batch_normalization_layer_call_fn_2422|KHJID’A
:’7
-*
inputs??????????????????@
p 

 
ͺ ".+
unknown??????????????????@²
2__inference_batch_normalization_layer_call_fn_2435|JKHID’A
:’7
-*
inputs??????????????????@
p

 
ͺ ".+
unknown??????????????????@΅
F__inference_block1_Conv1_layer_call_and_return_conditional_losses_2359k)*3’0
)’&
$!
inputs?????????5@
ͺ "0’-
&#
tensor_0?????????5@
 
+__inference_block1_Conv1_layer_call_fn_2343`)*3’0
)’&
$!
inputs?????????5@
ͺ "%"
unknown?????????5@΅
F__inference_block1_Conv2_layer_call_and_return_conditional_losses_2384k233’0
)’&
$!
inputs?????????5@
ͺ "0’-
&#
tensor_0?????????5@
 
+__inference_block1_Conv2_layer_call_fn_2368`233’0
)’&
$!
inputs?????????5@
ͺ "%"
unknown?????????5@Ψ
H__inference_block1_MaxPool_layer_call_and_return_conditional_losses_2409E’B
;’8
63
inputs'???????????????????????????
ͺ "B’?
85
tensor_0'???????????????????????????
 ²
-__inference_block1_MaxPool_layer_call_fn_2401E’B
;’8
63
inputs'???????????????????????????
ͺ "74
unknown'???????????????????????????ί
D__inference_block1_add_layer_call_and_return_conditional_losses_2396b’_
X’U
SP
&#
inputs_0?????????5@
&#
inputs_1?????????5@
ͺ "0’-
&#
tensor_0?????????5@
 Ή
)__inference_block1_add_layer_call_fn_2390b’_
X’U
SP
&#
inputs_0?????????5@
&#
inputs_1?????????5@
ͺ "%"
unknown?????????5@Ή
I__inference_block1_residual_layer_call_and_return_conditional_losses_2334l !4’1
*’'
%"
inputs?????????<
ͺ "0’-
&#
tensor_0?????????5@
 
.__inference_block1_residual_layer_call_fn_2319a !4’1
*’'
%"
inputs?????????<
ͺ "%"
unknown?????????5@΅
F__inference_block2_Conv1_layer_call_and_return_conditional_losses_2538k[\3’0
)’&
$!
inputs????????? 
ͺ "0’-
&#
tensor_0????????? 
 
+__inference_block2_Conv1_layer_call_fn_2522`[\3’0
)’&
$!
inputs????????? 
ͺ "%"
unknown????????? ΅
F__inference_block2_Conv2_layer_call_and_return_conditional_losses_2563kde3’0
)’&
$!
inputs????????? 
ͺ "0’-
&#
tensor_0????????? 
 
+__inference_block2_Conv2_layer_call_fn_2547`de3’0
)’&
$!
inputs????????? 
ͺ "%"
unknown????????? Ψ
H__inference_block2_MaxPool_layer_call_and_return_conditional_losses_2588E’B
;’8
63
inputs'???????????????????????????
ͺ "B’?
85
tensor_0'???????????????????????????
 ²
-__inference_block2_MaxPool_layer_call_fn_2580E’B
;’8
63
inputs'???????????????????????????
ͺ "74
unknown'???????????????????????????ί
D__inference_block2_add_layer_call_and_return_conditional_losses_2575b’_
X’U
SP
&#
inputs_0????????? 
&#
inputs_1????????? 
ͺ "0’-
&#
tensor_0????????? 
 Ή
)__inference_block2_add_layer_call_fn_2569b’_
X’U
SP
&#
inputs_0????????? 
&#
inputs_1????????? 
ͺ "%"
unknown????????? Έ
I__inference_block2_residual_layer_call_and_return_conditional_losses_2513kRS3’0
)’&
$!
inputs?????????@
ͺ "0’-
&#
tensor_0????????? 
 
.__inference_block2_residual_layer_call_fn_2498`RS3’0
)’&
$!
inputs?????????@
ͺ "%"
unknown????????? ©
?__inference_dense_layer_call_and_return_conditional_losses_2688f/’,
%’"
 
inputs????????? 
ͺ "-’*
# 
tensor_0?????????
 
$__inference_dense_layer_call_fn_2677[/’,
%’"
 
inputs????????? 
ͺ ""
unknown?????????°
F__inference_output_layer_layer_call_and_return_conditional_losses_2708f0’-
&’#
!
inputs?????????
ͺ ",’)
"
tensor_0?????????
 
+__inference_output_layer_layer_call_fn_2697[0’-
&’#
!
inputs?????????
ͺ "!
unknown?????????Μ
"__inference_signature_wrapper_1912₯ !)*23KHJIRS[\de}z|{H’E
’ 
>ͺ;
9
input_layer*'
input_layer?????????<";ͺ8
6
output_layer&#
output_layer?????????