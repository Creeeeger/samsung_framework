.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputEventReceiver"
.end annotation


# instance fields
.field private final mReceiver:Landroid/view/BatchedInputEventReceiver;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver$1;

    .line 5
    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)V

    .line 13
    .line 14
    .line 15
    iput-object v6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;->mReceiver:Landroid/view/BatchedInputEventReceiver;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;->mReceiver:Landroid/view/BatchedInputEventReceiver;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBatchingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;->mReceiver:Landroid/view/BatchedInputEventReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/BatchedInputEventReceiver;->setBatchingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
