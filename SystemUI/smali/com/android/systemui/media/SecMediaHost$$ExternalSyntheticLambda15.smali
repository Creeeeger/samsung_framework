.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Comparable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Comparable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Comparable;

    .line 8
    .line 9
    check-cast p0, Landroid/content/res/Configuration;

    .line 10
    .line 11
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->expandIconNeedToShow()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-boolean v1, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    move v1, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x4

    .line 50
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->calculateSongTitleWidth()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V

    .line 57
    .line 58
    .line 59
    iget p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    cmpl-float p0, p0, v1

    .line 63
    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    :cond_3
    iput-boolean v0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 68
    .line 69
    :cond_4
    return-void

    .line 70
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Comparable;

    .line 71
    .line 72
    check-cast p0, Ljava/lang/Boolean;

    .line 73
    .line 74
    check-cast p1, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-interface {p1, p0}, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;->onMediaVisibilityChanged(Z)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
