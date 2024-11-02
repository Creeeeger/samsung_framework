.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;->f$0:Z

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;->f$0:Z

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 10
    .line 11
    iput-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mFullyExpanded:Z

    .line 12
    .line 13
    iget p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateActionButtonEnabled(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateSeekBarVisibility()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;->f$0:Z

    .line 23
    .line 24
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel;->setListening(Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
