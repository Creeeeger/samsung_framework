.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSideCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    .line 20
    .line 21
    iput-object p1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->toastMessage:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 24
    .line 25
    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
