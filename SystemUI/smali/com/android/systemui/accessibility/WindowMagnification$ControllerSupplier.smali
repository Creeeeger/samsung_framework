.class public final Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;
.super Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/WindowMagnifierCallback;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;-><init>(Landroid/hardware/display/DisplayManager;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final createInstance(Landroid/view/Display;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v1, 0x7f7

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const p1, 0x7f14055c

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p1}, Landroid/content/Context;->setTheme(I)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v6, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    .line 21
    .line 22
    invoke-direct {v6, v4}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v7, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    .line 26
    .line 27
    invoke-direct {v7}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    new-instance v9, Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    invoke-direct {v9}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v10, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    .line 37
    .line 38
    iget-object v11, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 39
    .line 40
    new-instance v12, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {v12}, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v13, p0, Lcom/android/systemui/accessibility/WindowMagnification$ControllerSupplier;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 46
    .line 47
    move-object v3, p1

    .line 48
    invoke-direct/range {v3 .. v13}, Lcom/android/systemui/accessibility/WindowMagnificationController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MirrorWindowControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/accessibility/WindowMagnifierCallback;Lcom/android/systemui/model/SysUiState;Ljava/util/function/Supplier;Lcom/android/systemui/util/settings/SecureSettings;)V

    .line 49
    .line 50
    .line 51
    return-object p1
.end method
