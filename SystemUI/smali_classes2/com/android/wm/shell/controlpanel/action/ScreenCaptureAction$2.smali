.class public final Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/content/clipboard/SemClipboardEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;->this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClipboardUpdated(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    const-string p1, "ScreenCaptureAction"

    .line 5
    .line 6
    const-string p2, "clip added. doScreenCaptureDone"

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;->this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mHandler:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;

    .line 14
    .line 15
    const/16 p2, 0x9

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    .line 21
    .line 22
    const-string/jumbo p2, "semclipboard"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mClipboardEventListener:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onFilterUpdated(I)V
    .locals 0

    .line 1
    return-void
.end method
