.class public final Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final root:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0a99

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;

    .line 14
    .line 15
    const v0, 0x7f0a03a2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;->icon:Landroid/widget/ImageView;

    .line 25
    .line 26
    const v0, 0x7f0a03a3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;->title:Landroid/widget/TextView;

    .line 36
    .line 37
    return-void
.end method
