.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

.field public final synthetic val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 3

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->getStateDescription(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
