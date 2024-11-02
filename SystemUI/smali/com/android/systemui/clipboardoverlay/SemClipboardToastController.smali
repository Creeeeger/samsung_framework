.class public final Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public lastCopiedTime:J

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mRemoteServiceStateManager:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mRemoteServiceStateManager:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    .line 10
    .line 11
    const-class p2, Landroid/hardware/display/DisplayManager;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-object v0, p2

    .line 23
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    return-void
.end method
