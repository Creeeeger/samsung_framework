.class public final Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;->this$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;->this$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;->this$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    return-void
.end method
