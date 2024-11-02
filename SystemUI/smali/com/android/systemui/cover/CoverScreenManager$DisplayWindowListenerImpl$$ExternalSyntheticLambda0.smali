.class public final synthetic Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "CoverScreenManager"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    if-ne p0, v2, :cond_0

    .line 20
    .line 21
    const-string/jumbo p0, "onDisplayAdded : cover display added"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 28
    .line 29
    const/16 v0, 0x3e9

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 40
    .line 41
    if-ne p0, v2, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 44
    .line 45
    const/16 v0, 0x3e8

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    const-string/jumbo v2, "onDisplayRemoved : cover display removed"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
