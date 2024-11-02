.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/model/SysUiState$SysUiStateCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wmshell/WMShell;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/WMShell;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSystemUiStateChanged(J)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-wide/32 v5, 0x80ca4c

    .line 8
    .line 9
    .line 10
    iget-object v7, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/pip/Pip;

    .line 19
    .line 20
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    and-long/2addr v5, p1

    .line 24
    cmp-long v0, v5, v3

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    :goto_0
    invoke-interface {p0, p1, p2, v1}, Lcom/android/wm/shell/pip/Pip;->onSystemUiStateChanged(JZ)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    check-cast p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    and-long/2addr v5, p1

    .line 40
    cmp-long v0, v5, v3

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move v0, v1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move v0, v2

    .line 47
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const-wide/16 v5, 0x2

    .line 53
    .line 54
    and-long/2addr v5, p1

    .line 55
    cmp-long v0, v5, v3

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    move v0, v1

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    move v0, v2

    .line 62
    :goto_3
    const-wide/16 v5, 0x10

    .line 63
    .line 64
    and-long/2addr p1, v5

    .line 65
    cmp-long p1, p1, v3

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    move v2, v1

    .line 70
    :cond_3
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSystemUiStateValid:Z

    .line 71
    .line 72
    if-eq p1, v0, :cond_4

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSystemUiStateValid:Z

    .line 75
    .line 76
    new-instance p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;I)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 82
    .line 83
    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsA11yButtonEnabled:Z

    .line 89
    .line 90
    if-eq p1, v2, :cond_5

    .line 91
    .line 92
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsA11yButtonEnabled:Z

    .line 93
    .line 94
    :cond_5
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
