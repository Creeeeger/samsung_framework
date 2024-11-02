.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic $instructions:I

.field public final synthetic $this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

.field public final synthetic $useAlphaNumeric:Z

.field public final synthetic $useRetryStrings:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;IZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$instructions:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$useRetryStrings:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$useAlphaNumeric:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 2
    .line 3
    const v0, 0x7f0a02c0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$instructions:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$useRetryStrings:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x7f1303f0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 43
    .line 44
    const v1, 0x7f0a02c2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 52
    .line 53
    const v1, 0x7f1303ab

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const v2, 0x7f06004b

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 87
    .line 88
    const/4 v2, -0x1

    .line 89
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    const/4 v2, -0x2

    .line 97
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 105
    .line 106
    const v1, 0x7f0a02c1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/CheckBox;

    .line 114
    .line 115
    iget-boolean v2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$useAlphaNumeric:Z

    .line 116
    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    .line 119
    .line 120
    sget-object v2, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-static {v2, v0, v3}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Landroid/widget/CheckBox;

    .line 136
    .line 137
    new-instance v1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;

    .line 138
    .line 139
    invoke-direct {v1, v0, p1}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;-><init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 146
    .line 147
    .line 148
    return-void
.end method
