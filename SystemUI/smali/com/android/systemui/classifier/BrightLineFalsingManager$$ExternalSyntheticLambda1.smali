.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;I[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$2:[Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$2:[Z

    .line 6
    .line 7
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/android/systemui/classifier/FalsingClassifier;->calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    aget-boolean v1, p0, v0

    .line 23
    .line 24
    iget-boolean v2, p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    aput-boolean v1, p0, v0

    .line 28
    .line 29
    return-object p1
.end method
