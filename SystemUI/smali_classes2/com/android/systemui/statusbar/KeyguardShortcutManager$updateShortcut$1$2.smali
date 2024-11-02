.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$2;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$2;->$th:I

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
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$2;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$2;->$th:I

    .line 4
    .line 5
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
