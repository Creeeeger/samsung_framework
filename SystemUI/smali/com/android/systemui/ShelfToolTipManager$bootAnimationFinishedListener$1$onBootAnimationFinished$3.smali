.class public final Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$3;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 4
    .line 5
    cmpg-float p1, p1, v0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v0

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$3;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/android/systemui/ShelfToolTipManager;->isFullyExpanded:Z

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager;->isFullyExpanded:Z

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/ShelfToolTipManager;->mJustBeginToOpen:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mJustBeginToOpen:Z

    .line 33
    .line 34
    :cond_2
    return-void
.end method
