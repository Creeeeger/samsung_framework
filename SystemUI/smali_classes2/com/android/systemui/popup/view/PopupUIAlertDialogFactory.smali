.class public final Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDismissDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;

.field public final mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field public final mShowingDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;

.field public final mSubscreenContext:Landroid/content/Context;

.field public final mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p5, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;

    .line 5
    .line 6
    invoke-direct {p5, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;

    .line 10
    .line 11
    new-instance p5, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;

    .line 12
    .line 13
    invoke-direct {p5, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    .line 14
    .line 15
    .line 16
    iput-object p5, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    sget-boolean p1, Lcom/android/systemui/BasicRune;->POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-class p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mSubscreenContext:Landroid/content/Context;

    .line 38
    .line 39
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final initializeDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 18
    .line 19
    :cond_1
    return-void
.end method
