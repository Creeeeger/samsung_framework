.class public final Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/buttons/QSTooltipWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/buttons/QSTooltipWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;->this$0:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

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
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;->this$0:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->isTooltipShown()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;->this$0:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
