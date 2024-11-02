.class public final Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->this$0:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setDetailClosing(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->this$0:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailClosing:Z

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setDetailOpening(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->this$0:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailOpening:Z

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setDetailShowing(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->this$0:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailShowing:Z

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
