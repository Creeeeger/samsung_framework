.class public final Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/sep/SnackbarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/sep/SnackbarController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;->this$0:Lcom/android/systemui/screenshot/sep/SnackbarController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismissed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;->this$0:Lcom/android/systemui/screenshot/sep/SnackbarController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->cb:Lcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->detachSemScreenshotLayoutToWindow()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    sput-boolean p0, Lcom/android/systemui/screenshot/ScreenshotController;->isSnackBarShowing:Z

    .line 16
    .line 17
    return-void
.end method
