.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

.field public final synthetic f$1:Landroid/view/LayoutInflater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const v3, 0x7f0d0362

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/widget/RadioButton;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getDescription()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParent:Landroid/view/ViewGroup;

    .line 35
    .line 36
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
