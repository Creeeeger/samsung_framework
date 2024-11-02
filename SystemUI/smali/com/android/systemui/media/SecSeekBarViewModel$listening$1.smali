.class public final Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $value:Z

.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;->$value:Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;->$value:Z

    .line 6
    .line 7
    if-eq v1, p0, :cond_0

    .line 8
    .line 9
    iput-boolean p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
