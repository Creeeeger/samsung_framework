.class public final Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dataFormat:B

.field public dataOriginal:[F

.field public dataShared:Landroid/os/SharedMemory;

.field public dataSource:B

.field public dataType:B

.field public filedesc:Ljava/io/FileDescriptor;

.field public shape:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 14
    const-class v0, Landroid/os/SharedMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    :cond_3
    :goto_0
    return-void
.end method

.method public static readFloat16FromBytes([BI)Landroid/util/Half;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    aget-byte v0, p0, v0

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    shl-int/lit8 v0, v0, 0x8

    .line 13
    .line 14
    aget-byte p0, p0, p1

    .line 15
    .line 16
    and-int/lit16 p0, p0, 0xff

    .line 17
    .line 18
    or-int/2addr p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    new-instance p1, Landroid/util/Half;

    .line 22
    .line 23
    int-to-short p0, p0

    .line 24
    invoke-direct {p1, p0}, Landroid/util/Half;-><init>(S)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public static readFloatFromBytes([BI)F
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    add-int/lit8 v1, p1, -0x1

    .line 5
    .line 6
    array-length v2, p0

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget-byte v1, p0, v1

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x18

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v2, p1, -0x2

    .line 22
    .line 23
    aget-byte v2, p0, v2

    .line 24
    .line 25
    and-int/lit16 v2, v2, 0xff

    .line 26
    .line 27
    shl-int/lit8 v2, v2, 0x10

    .line 28
    .line 29
    or-int/2addr v1, v2

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/lit8 v2, p1, -0x3

    .line 39
    .line 40
    aget-byte v2, p0, v2

    .line 41
    .line 42
    and-int/lit16 v2, v2, 0xff

    .line 43
    .line 44
    shl-int/lit8 v2, v2, 0x8

    .line 45
    .line 46
    or-int/2addr v1, v2

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr p1, v0

    .line 56
    aget-byte p0, p0, p1

    .line 57
    .line 58
    and-int/lit16 p0, p0, 0xff

    .line 59
    .line 60
    or-int/2addr p0, v1

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 p0, 0x0

    .line 75
    :goto_0
    return p0
.end method

.method public static readFloatToBytes([F)[B
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    mul-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    aget v2, p0, v1

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    mul-int/lit8 v3, v1, 0x4

    .line 21
    .line 22
    add-int/lit8 v4, v3, 0x3

    .line 23
    .line 24
    shr-int/lit8 v5, v2, 0x18

    .line 25
    .line 26
    int-to-byte v5, v5

    .line 27
    aput-byte v5, v0, v4

    .line 28
    .line 29
    add-int/lit8 v4, v3, 0x2

    .line 30
    .line 31
    shr-int/lit8 v5, v2, 0x10

    .line 32
    .line 33
    int-to-byte v5, v5

    .line 34
    aput-byte v5, v0, v4

    .line 35
    .line 36
    add-int/lit8 v4, v3, 0x1

    .line 37
    .line 38
    shr-int/lit8 v5, v2, 0x8

    .line 39
    .line 40
    int-to-byte v5, v5

    .line 41
    aput-byte v5, v0, v4

    .line 42
    .line 43
    int-to-byte v2, v2

    .line 44
    aput-byte v2, v0, v3

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v0
.end method

.method public static readIntFromBytes([BI)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x3

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    aget-byte v0, p0, v0

    .line 9
    .line 10
    shl-int/lit8 v0, v0, 0x18

    .line 11
    .line 12
    add-int/lit8 v1, p1, 0x2

    .line 13
    .line 14
    aget-byte v1, p0, v1

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0xff

    .line 17
    .line 18
    shl-int/lit8 v1, v1, 0x10

    .line 19
    .line 20
    or-int/2addr v0, v1

    .line 21
    add-int/lit8 v1, p1, 0x1

    .line 22
    .line 23
    aget-byte v1, p0, v1

    .line 24
    .line 25
    and-int/lit16 v1, v1, 0xff

    .line 26
    .line 27
    shl-int/lit8 v1, v1, 0x8

    .line 28
    .line 29
    or-int/2addr v0, v1

    .line 30
    aget-byte p0, p0, p1

    .line 31
    .line 32
    and-int/lit16 p0, p0, 0xff

    .line 33
    .line 34
    or-int/2addr p0, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0
.end method

.method public static readIntToBytes([I)[B
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    mul-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    mul-int/lit8 v2, v1, 0x4

    .line 15
    .line 16
    add-int/lit8 v3, v2, 0x3

    .line 17
    .line 18
    aget v4, p0, v1

    .line 19
    .line 20
    shr-int/lit8 v5, v4, 0x18

    .line 21
    .line 22
    int-to-byte v5, v5

    .line 23
    aput-byte v5, v0, v3

    .line 24
    .line 25
    add-int/lit8 v3, v2, 0x2

    .line 26
    .line 27
    shr-int/lit8 v5, v4, 0x10

    .line 28
    .line 29
    int-to-byte v5, v5

    .line 30
    aput-byte v5, v0, v3

    .line 31
    .line 32
    add-int/lit8 v3, v2, 0x1

    .line 33
    .line 34
    shr-int/lit8 v5, v4, 0x8

    .line 35
    .line 36
    int-to-byte v5, v5

    .line 37
    aput-byte v5, v0, v3

    .line 38
    .line 39
    int-to-byte v3, v4

    .line 40
    aput-byte v3, v0, v2

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v0
.end method

.method public static readJSONObjectFromBytes([B)Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static readLongFromBytes([BI)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    add-int/lit8 v2, p1, 0x7

    .line 6
    .line 7
    array-length v3, p0

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const/16 v3, 0x8

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    add-int v3, p1, v2

    .line 16
    .line 17
    aget-byte v3, p0, v3

    .line 18
    .line 19
    int-to-long v3, v3

    .line 20
    const-wide/16 v5, 0xff

    .line 21
    .line 22
    and-long/2addr v3, v5

    .line 23
    mul-int/lit8 v5, v2, 0x8

    .line 24
    .line 25
    shl-long/2addr v3, v5

    .line 26
    add-long/2addr v0, v3

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-wide v0
.end method

.method public static readStringToBytes([Ljava/lang/String;)[B
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v0, v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move v2, v1

    .line 26
    :goto_1
    array-length v3, p0

    .line 27
    if-ge v2, v3, :cond_2

    .line 28
    .line 29
    aget-object v3, p0, v2

    .line 30
    .line 31
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method


# virtual methods
.method public final closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getDataFormat()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    .line 2
    .line 3
    return p0
.end method

.method public final getDataOriginal()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataShared()Landroid/os/SharedMemory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSource()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    .line 2
    .line 3
    return p0
.end method

.method public final getDataType()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    .line 2
    .line 3
    return p0
.end method

.method public final getFileDesc()Ljava/io/FileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShape()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setDataFormat(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    .line 2
    .line 3
    return-void
.end method

.method public final setDataOriginal([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    .line 2
    .line 3
    return-void
.end method

.method public final setDataShared(Landroid/os/SharedMemory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSource(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    .line 2
    .line 3
    return-void
.end method

.method public final setDataType(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    .line 2
    .line 3
    return-void
.end method

.method public final setFileDesc(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    return-void
.end method

.method public final setShape([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

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
    const-string v1, "DBufr ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-byte v1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "],shp=["

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "],["

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    .line 43
    .line 44
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, "]"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    .line 5
    .line 6
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    array-length v1, p2

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length p2, p2

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    :goto_1
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    .line 37
    .line 38
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    .line 39
    .line 40
    if-nez p2, :cond_4

    .line 41
    .line 42
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    array-length v1, p2

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    array-length p2, p2

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/4 v1, 0x1

    .line 65
    if-ne p2, v1, :cond_5

    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    const/4 v1, 0x2

    .line 74
    if-ne p2, v1, :cond_6

    .line 75
    .line 76
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    .line 77
    .line 78
    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_3
    return-void
.end method
