.class public abstract Lcom/google/protobuf/UnknownFieldSchema;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFixed32(IILjava/lang/Object;)V
.end method

.method public abstract addFixed64(IJLjava/lang/Object;)V
.end method

.method public abstract addGroup(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
.end method

.method public abstract addVarint(IJLjava/lang/Object;)V
.end method

.method public abstract getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract getSerializedSize(Ljava/lang/Object;)I
.end method

.method public abstract getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
.end method

.method public abstract makeImmutable(Ljava/lang/Object;)V
.end method

.method public abstract merge(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public final mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z
    .locals 6

    .line 1
    check-cast p2, Lcom/google/protobuf/CodedInputStreamReader;

    .line 2
    .line 3
    iget v0, p2, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 4
    .line 5
    ushr-int/lit8 v1, v0, 0x3

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    if-eq v0, v2, :cond_7

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_6

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x4

    .line 19
    if-eq v0, v3, :cond_2

    .line 20
    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    if-ne v0, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed32()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/protobuf/UnknownFieldSchema;->addFixed32(IILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    throw p0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Lcom/google/protobuf/UnknownFieldSetLite;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    shl-int/lit8 v3, v1, 0x3

    .line 46
    .line 47
    or-int/2addr v3, v4

    .line 48
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStreamReader;->getFieldNumber()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const v5, 0x7fffffff

    .line 53
    .line 54
    .line 55
    if-eq v4, v5, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    :cond_4
    iget p2, p2, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 64
    .line 65
    if-ne v3, p2, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->addGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_5
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 76
    .line 77
    const-string p1, "Protocol message end-group tag did not match expected tag."

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 88
    .line 89
    .line 90
    return v2

    .line 91
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed64()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/google/protobuf/UnknownFieldSchema;->addFixed64(IJLjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStreamReader;->readInt64()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/google/protobuf/UnknownFieldSchema;->addVarint(IJLjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return v2
.end method

.method public abstract newBuilder()Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract shouldDiscardUnknownFields()V
.end method

.method public abstract toImmutable(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
.end method

.method public abstract writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
.end method
