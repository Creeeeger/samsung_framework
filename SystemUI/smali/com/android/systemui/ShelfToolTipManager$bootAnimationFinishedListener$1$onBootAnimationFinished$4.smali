.class public final Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/ShadeQsExpansionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$4;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onQsExpansionChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$4;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mIsQsExpanded:Z

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mIsQsExpanded:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
