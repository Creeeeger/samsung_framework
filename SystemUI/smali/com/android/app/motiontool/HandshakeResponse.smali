.class public final Lcom/android/app/motiontool/HandshakeResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final SERVER_VERSION_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private serverVersion_:I

.field private status_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/app/motiontool/HandshakeResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/app/motiontool/HandshakeResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/app/motiontool/HandshakeResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeResponse;

    .line 7
    .line 8
    const-class v1, Lcom/android/app/motiontool/HandshakeResponse;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/app/motiontool/HandshakeResponse;->status_:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/HandshakeResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/HandshakeResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public static access$100(Lcom/android/app/motiontool/HandshakeResponse;Lcom/android/app/motiontool/HandshakeResponse$Status;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/app/motiontool/HandshakeResponse$Status;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/app/motiontool/HandshakeResponse;->status_:I

    .line 9
    .line 10
    iget p1, p0, Lcom/android/app/motiontool/HandshakeResponse;->bitField0_:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/android/app/motiontool/HandshakeResponse;->bitField0_:I

    .line 15
    .line 16
    return-void
.end method

.method public static access$300(Lcom/android/app/motiontool/HandshakeResponse;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/motiontool/HandshakeResponse;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/motiontool/HandshakeResponse;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/android/app/motiontool/HandshakeResponse;->serverVersion_:I

    .line 9
    .line 10
    return-void
.end method

.method public static newBuilder()Lcom/android/app/motiontool/HandshakeResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/HandshakeResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/app/motiontool/HandshakeResponse$Builder;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/app/motiontool/HandshakeResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :pswitch_0
    return-object p1

    .line 20
    :pswitch_1
    const/4 p0, 0x1

    .line 21
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_2
    sget-object p0, Lcom/android/app/motiontool/HandshakeResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const-class p1, Lcom/android/app/motiontool/HandshakeResponse;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/HandshakeResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object v0, Lcom/android/app/motiontool/HandshakeResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeResponse;

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p0, Lcom/android/app/motiontool/HandshakeResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    :cond_0
    monitor-exit p1

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    return-object p0

    .line 52
    :pswitch_3
    sget-object p0, Lcom/android/app/motiontool/HandshakeResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeResponse;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_4
    const-string p0, "bitField0_"

    .line 56
    .line 57
    const-string/jumbo p1, "status_"

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status;->OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 61
    .line 62
    sget-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status$StatusVerifier;->INSTANCE:Lcom/android/app/motiontool/HandshakeResponse$Status$StatusVerifier;

    .line 63
    .line 64
    const-string/jumbo v1, "serverVersion_"

    .line 65
    .line 66
    .line 67
    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1004\u0001"

    .line 72
    .line 73
    sget-object v0, Lcom/android/app/motiontool/HandshakeResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeResponse;

    .line 74
    .line 75
    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    .line 76
    .line 77
    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_5
    new-instance p0, Lcom/android/app/motiontool/HandshakeResponse$Builder;

    .line 82
    .line 83
    invoke-direct {p0, p1}, Lcom/android/app/motiontool/HandshakeResponse$Builder;-><init>(Lcom/android/app/motiontool/HandshakeResponse$1;)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_6
    new-instance p0, Lcom/android/app/motiontool/HandshakeResponse;

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/android/app/motiontool/HandshakeResponse;-><init>()V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
