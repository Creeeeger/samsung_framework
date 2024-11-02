.class public final Lcom/android/wm/shell/common/SystemWindows$ContainerWindow;
.super Landroid/view/IWindow$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final closeSystemDialogs(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchAppVisibility(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchDragEventUpdated(Landroid/view/DragEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchGetNewSurface()V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchLetterboxDirectionChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchSPenGestureEvent([Landroid/view/InputEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchWallpaperOffsets(FFFFFZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchWindowShown()V
    .locals 0

    .line 1
    return-void
.end method

.method public final executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final invalidateForScreenShot(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final moved(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p0, Landroid/view/ScrollCaptureResponse$Builder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Not Implemented"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p1, p0}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method

.method public final resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updatePointerIcon(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public final windowFocusInTaskChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method
