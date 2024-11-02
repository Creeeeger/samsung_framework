.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;
.super Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpStateBinderListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public static bridge synthetic -$$Nest$mgetListener(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;)Lcom/samsung/android/knox/sdp/SdpStateListener;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->getListener()Lcom/samsung/android/knox/sdp/SdpStateListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    .line 4
    new-instance p2, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;Lcom/samsung/android/knox/sdp/SdpUtil;)V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V

    return-void
.end method

.method private getListener()Lcom/samsung/android/knox/sdp/SdpStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onEngineRemoved()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onEngineRemoved()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStateChange(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->getMessage()Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onStateChange(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
