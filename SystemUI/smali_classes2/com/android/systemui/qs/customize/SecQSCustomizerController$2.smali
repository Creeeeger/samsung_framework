.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 22
    .line 23
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f140560

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 36
    .line 37
    const v0, 0x7f130f5e

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 48
    .line 49
    .line 50
    const v1, 0x7f130dec

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 57
    .line 58
    const v0, 0x7f130bec

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 66
    .line 67
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$5;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$5;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method
