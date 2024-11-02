.class public final Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $position:J

.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$position:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$position:J

    .line 10
    .line 11
    long-to-int p0, v2

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/16 v2, 0x2f

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v1, v3, p0, v2}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
