.class public Lcom/samsung/android/knox/sdp/SdpErrno;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ERROR_COMPROMISED:I = -0xe

.field public static final ERROR_ENGINE_ACCESS_DENIED:I = -0x7

.field public static final ERROR_ENGINE_ALREADY_EXISTS:I = -0x4

.field public static final ERROR_ENGINE_LOCKED:I = -0x6

.field public static final ERROR_ENGINE_NOT_EXISTS:I = -0x5

.field public static final ERROR_ENGINE_THROTTLED:I = -0x8

.field public static final ERROR_FAILED:I = -0x63

.field public static final ERROR_FILE_IO:I = -0xc

.field public static final ERROR_INTERNAL:I = -0x63

.field public static final ERROR_INVALID_PARAMETER:I = -0x3

.field public static final ERROR_INVALID_PASSWORD:I = -0x1

.field public static final ERROR_INVALID_RESET_TOKEN:I = -0x2

.field public static final ERROR_LICENSE_REQUIRED:I = -0x9

.field public static final ERROR_NATIVE:I = -0xb

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED_DEVICE:I = -0xa

.field public static final ERROR_SERVICE_NOT_FOUND:I = -0xd

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, -0x63

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p0, "Unknown error"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    const-string p0, "No error"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_1
    const-string p0, "Invalid password"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_2
    const-string p0, "Invalid reset token"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_3
    const-string p0, "Invalid parameter"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_4
    const-string p0, "SDP engine already exists"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_5
    const-string p0, "SDP engine does not exist"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_6
    const-string p0, "SDP engine is locked"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_7
    const-string p0, "SDP engine access denied"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_8
    const-string p0, "SDP engine is throttled"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_9
    const-string p0, "License required"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_a
    const-string p0, "SDP not supported device"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :pswitch_b
    const-string p0, "Internal error occurred"

    .line 45
    .line 46
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
