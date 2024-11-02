.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;
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
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;->$th:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

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
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;->$th:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;->test(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$2;

    .line 21
    .line 22
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;->$th:I

    .line 23
    .line 24
    invoke-direct {v2, v0, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$2;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
