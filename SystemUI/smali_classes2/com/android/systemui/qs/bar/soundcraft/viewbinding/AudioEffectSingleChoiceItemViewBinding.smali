.class public final Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectSingleChoiceItemViewBinding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final name:Landroid/widget/TextView;

.field public final root:Landroid/widget/LinearLayout;

.field public final status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a04e4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectSingleChoiceItemViewBinding;->root:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const v0, 0x7f0a04de

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectSingleChoiceItemViewBinding;->icon:Landroid/widget/ImageView;

    .line 25
    .line 26
    const v0, 0x7f0a04e3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectSingleChoiceItemViewBinding;->name:Landroid/widget/TextView;

    .line 36
    .line 37
    const v0, 0x7f0a04e5

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectSingleChoiceItemViewBinding;->status:Landroid/widget/TextView;

    .line 47
    .line 48
    return-void
.end method
