.class public final Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->isFalseSeek:Z

    .line 11
    .line 12
    return-void
.end method
