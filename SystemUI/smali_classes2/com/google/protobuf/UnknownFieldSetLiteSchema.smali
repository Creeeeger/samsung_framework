.class public final Lcom/google/protobuf/UnknownFieldSetLiteSchema;
.super Lcom/google/protobuf/UnknownFieldSchema;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSchema;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final addFixed32(IILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    shl-int/lit8 p0, p1, 0x3

    .line 4
    .line 5
    or-int/lit8 p0, p0, 0x5

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p3, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final addFixed64(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    shl-int/lit8 p0, p1, 0x3

    .line 4
    .line 5
    or-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final addGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    check-cast p3, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4
    .line 5
    shl-int/lit8 p0, p1, 0x3

    .line 6
    .line 7
    or-int/lit8 p0, p0, 0x3

    .line 8
    .line 9
    invoke-virtual {p2, p0, p3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    shl-int/lit8 p0, p2, 0x3

    .line 4
    .line 5
    or-int/lit8 p0, p0, 0x2

    .line 6
    .line 7
    invoke-virtual {p1, p0, p3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final addVarint(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    shl-int/lit8 p0, p1, 0x3

    .line 4
    .line 5
    or-int/lit8 p0, p0, 0x0

    .line 6
    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4
    .line 5
    sget-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iput-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method public final getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getSerializedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    iget p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    move v0, p0

    .line 11
    :goto_0
    iget v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 12
    .line 13
    if-ge p0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 16
    .line 17
    aget v1, v1, p0

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    ushr-int/2addr v1, v2

    .line 21
    iget-object v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v3, v3, p0

    .line 24
    .line 25
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x2

    .line 33
    mul-int/2addr v4, v5

    .line 34
    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v1, v4

    .line 39
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/2addr v2, v1

    .line 44
    add-int/2addr v0, v2

    .line 45
    add-int/lit8 p0, p0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iput v0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 49
    .line 50
    move p0, v0

    .line 51
    :goto_1
    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 7
    .line 8
    return-void
.end method

.method public final merge(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 5

    .line 1
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4
    .line 5
    sget-object p0, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p0}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-boolean p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 36
    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    iget p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 40
    .line 41
    iget v0, p2, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 42
    .line 43
    add-int/2addr p0, v0

    .line 44
    invoke-virtual {p1, p0}, Lcom/google/protobuf/UnknownFieldSetLite;->ensureCapacity(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p2, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 48
    .line 49
    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 50
    .line 51
    iget v2, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 52
    .line 53
    iget v3, p2, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p2, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 62
    .line 63
    iget v2, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 64
    .line 65
    iget p2, p2, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 66
    .line 67
    invoke-static {v0, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    iput p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 71
    .line 72
    :goto_0
    return-object p1

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final newBuilder()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 6
    .line 7
    return-void
.end method

.method public final setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 6
    .line 7
    return-void
.end method

.method public final shouldDiscardUnknownFields()V
    .locals 0

    .line 1
    return-void
.end method

.method public final toImmutable(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    iput-boolean p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 5
    .line 6
    return-object p1
.end method

.method public final writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    .line 10
    .line 11
    sget-object v0, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    iget p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 16
    .line 17
    :goto_0
    add-int/lit8 p0, p0, -0x1

    .line 18
    .line 19
    if-ltz p0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 22
    .line 23
    aget v0, v0, p0

    .line 24
    .line 25
    ushr-int/lit8 v0, v0, 0x3

    .line 26
    .line 27
    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 28
    .line 29
    aget-object v1, v1, p0

    .line 30
    .line 31
    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_1
    iget v0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 37
    .line 38
    if-ge p0, v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 41
    .line 42
    aget v0, v0, p0

    .line 43
    .line 44
    ushr-int/lit8 v0, v0, 0x3

    .line 45
    .line 46
    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 47
    .line 48
    aget-object v1, v1, p0

    .line 49
    .line 50
    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 p0, p0, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method public final writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
