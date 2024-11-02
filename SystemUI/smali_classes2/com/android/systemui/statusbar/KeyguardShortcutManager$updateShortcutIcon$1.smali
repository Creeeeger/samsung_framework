.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->$th:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->$th:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->$th:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->test(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$2;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->$th:I

    .line 25
    .line 26
    invoke-direct {v2, v0, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$2;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
