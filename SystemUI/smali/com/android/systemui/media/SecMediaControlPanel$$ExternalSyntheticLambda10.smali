.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 p0, 0x1

    .line 36
    return p0
.end method
