.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 9
    .line 10
    check-cast p1, Lcom/android/systemui/media/QSMediaCornerRoundedView;

    .line 11
    .line 12
    iput-boolean v0, p1, Lcom/android/systemui/media/QSMediaCornerRoundedView;->mIsCornerRound:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateResources()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 25
    .line 26
    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iput-boolean v0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    .line 40
    .line 41
    :cond_1
    :goto_1
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
