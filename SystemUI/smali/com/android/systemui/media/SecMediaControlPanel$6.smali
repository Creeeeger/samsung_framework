.class public final Lcom/android/systemui/media/SecMediaControlPanel$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$6;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationAtEnd()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$6;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCollapsedActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onAnimationAtStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$6;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCollapsedActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onAnimationStarted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$6;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCollapsedActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
