.class public final synthetic Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(IIIIIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$4:I

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$5:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$6:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$0:I

    .line 2
    .line 3
    iget v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$2:I

    .line 6
    .line 7
    iget v4, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$3:I

    .line 8
    .line 9
    iget v5, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$4:I

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$5:Z

    .line 12
    .line 13
    iget-boolean v7, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;->f$6:Z

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setFancyClipping(IIIIIZZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
