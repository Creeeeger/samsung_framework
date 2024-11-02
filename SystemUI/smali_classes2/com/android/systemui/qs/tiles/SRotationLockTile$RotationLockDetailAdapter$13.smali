.class public final Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

.field public final synthetic val$button:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->val$button:Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->val$title:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->val$button:Landroidx/appcompat/widget/SwitchCompat;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 15
    .line 16
    sget v0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->$r8$clinit:I

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const v0, 0x7f130ee7

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->val$button:Landroidx/appcompat/widget/SwitchCompat;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 39
    .line 40
    sget v0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->$r8$clinit:I

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const v0, 0x7f131117

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 55
    .line 56
    sget v0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->$r8$clinit:I

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const v0, 0x7f131116

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;->val$title:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, ", "

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, ", Switch"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-class p0, Landroid/widget/Switch;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
