.class public final Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;->this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a09bf

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const-class p1, Landroid/widget/SeekBar;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;->this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->access$000(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const p1, 0x7f1300cc

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const v0, 0x7f0a04b4

    .line 44
    .line 45
    .line 46
    if-eq p0, v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    const p1, 0x7f0a04ab

    .line 53
    .line 54
    .line 55
    if-ne p0, p1, :cond_2

    .line 56
    .line 57
    :cond_1
    const-class p0, Landroid/widget/Button;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method
