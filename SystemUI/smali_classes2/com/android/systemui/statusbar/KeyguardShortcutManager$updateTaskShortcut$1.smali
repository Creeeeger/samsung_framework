.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $taskName:Ljava/lang/String;

.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$taskName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$th:I

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
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$th:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$taskName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;-><init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$taskName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->test(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;

    .line 25
    .line 26
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$th:I

    .line 27
    .line 28
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$3;

    .line 40
    .line 41
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$th:I

    .line 42
    .line 43
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$3;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->resetShortcutValue()V

    .line 56
    .line 57
    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "getPositionCorrectionRatio exception = "

    .line 61
    .line 62
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v0, "KeyguardShortcutManager"

    .line 73
    .line 74
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method
