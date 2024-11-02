.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->$componentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->$th:I

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
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->$th:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->$componentName:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->test(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$2;

    .line 23
    .line 24
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->$th:I

    .line 25
    .line 26
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$2;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$3;

    .line 38
    .line 39
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->$th:I

    .line 40
    .line 41
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$3;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->resetShortcutValue()V

    .line 54
    .line 55
    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "getPositionCorrectionRatio exception = "

    .line 59
    .line 60
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v0, "KeyguardShortcutManager"

    .line 71
    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
