.class public final Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowReshape:Z

.field public compUnit:I

.field public cpuThreadCount:I

.field public dataShared:Landroid/os/SharedMemory;

.field public execType:I

.field public fd:Ljava/io/FileDescriptor;

.field public fd_StartOffSet:J

.field public flag:I

.field public inputNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public input_shape:[Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

.field public mType:I

.field public mode:I

.field public modelInputType:I

.field public model_buffer_len:I

.field public model_buffer_ptr:[B

.field public model_file:Ljava/lang/String;

.field public model_name:Ljava/lang/String;

.field public model_package_buffer_len:I

.field public model_package_buffer_ptr:[B

.field public outputNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public weights_file:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getDataShared()Landroid/os/SharedMemory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExecType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFd()Ljava/io/FileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInputNames()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getModelBufferLen()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_buffer_len:I

    .line 2
    .line 3
    return p0
.end method

.method public final getModelBufferPtr()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_buffer_ptr:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getModelFile()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getModelInputType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getModelPackageBufferLen()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    .line 2
    .line 3
    return p0
.end method

.method public final getModelPackageBufferPtr()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOutputNames()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStartOffSet()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getWeightsFile()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->compUnit:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->mType:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    .line 68
    .line 69
    iget v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    .line 70
    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 v1, 0x1

    .line 81
    if-ne v0, v1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    iput-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x2

    .line 101
    if-ne v0, v1, :cond_2

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    .line 108
    .line 109
    if-lez v0, :cond_3

    .line 110
    .line 111
    new-array v0, v0, [B

    .line 112
    .line 113
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const/4 v1, 0x3

    .line 120
    if-ne v0, v1, :cond_3

    .line 121
    .line 122
    const-class v0, Landroid/os/SharedMemory;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/os/SharedMemory;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    .line 135
    .line 136
    :cond_3
    :goto_0
    return-void
.end method

.method public final setCompUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->compUnit:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDataShared(Landroid/os/SharedMemory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    .line 2
    .line 3
    return-void
.end method

.method public final setExecType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFd(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    return-void
.end method

.method public final setInputNames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setModelBufferLen(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_buffer_len:I

    .line 2
    .line 3
    return-void
.end method

.method public final setModelBufferPtr([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_buffer_ptr:[B

    .line 2
    .line 3
    return-void
.end method

.method public final setModelFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setModelInputType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setModelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setModelPackageBufferLen(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    .line 2
    .line 3
    return-void
.end method

.method public final setModelPackageBufferPtr([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    .line 2
    .line 3
    return-void
.end method

.method public final setOutputNames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setStartOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    .line 2
    .line 3
    return-void
.end method

.method public final setWeightsFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setmType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->mType:I

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mdl["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "], fl ["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->compUnit:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->mType:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, [Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, [Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    .line 74
    .line 75
    if-nez p2, :cond_0

    .line 76
    .line 77
    const-string p2, ""

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    .line 87
    .line 88
    if-nez p2, :cond_1

    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const/4 v0, 0x1

    .line 97
    if-ne p2, v0, :cond_2

    .line 98
    .line 99
    iget-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const/4 v0, 0x2

    .line 111
    if-ne p2, v0, :cond_3

    .line 112
    .line 113
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    .line 117
    .line 118
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    .line 119
    .line 120
    if-lez p2, :cond_4

    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const/4 v0, 0x3

    .line 129
    if-ne p2, v0, :cond_4

    .line 130
    .line 131
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    .line 132
    .line 133
    const/4 p2, 0x0

    .line 134
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_1
    return-void
.end method
