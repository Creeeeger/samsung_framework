.class public final synthetic Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->showToolTip(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return v1
.end method
