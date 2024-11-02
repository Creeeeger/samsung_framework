.class public final synthetic Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;
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
    iput p2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

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
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 10
    .line 11
    iput-boolean p0, p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailShowing:Z

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

    .line 15
    .line 16
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 17
    .line 18
    iput-boolean p0, p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailClosing:Z

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_2
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

    .line 22
    .line 23
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 24
    .line 25
    iput-boolean p0, p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailOpening:Z

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_3
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

    .line 29
    .line 30
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->updatePanelExpanded(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

    .line 37
    .line 38
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQsExpanded(Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_5
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

    .line 45
    .line 46
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setStackScrollerOverscrolling(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_6
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

    .line 53
    .line 54
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setFullyExpanded(Z)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;->f$0:Z

    .line 61
    .line 62
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 63
    .line 64
    iput-boolean p0, p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mDetailTriggeredExpand:Z

    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
