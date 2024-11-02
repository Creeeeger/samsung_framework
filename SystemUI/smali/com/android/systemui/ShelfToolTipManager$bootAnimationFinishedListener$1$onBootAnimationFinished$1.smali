.class public final Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
