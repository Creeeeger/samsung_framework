.class public final Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final synthetic this$0:Lcom/android/settingslib/users/CreateUserDialogController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->mActivity:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    iget-object p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 8
    .line 9
    iget-object p3, p3, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 20
    .line 21
    iget-object p3, p3, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p3}, Landroid/view/View;->isShown()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    :cond_0
    iget-object p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 34
    .line 35
    iget-object p3, p3, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/widget/Toast;->cancel()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 41
    .line 42
    iget-object p4, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->mActivity:Landroid/app/Activity;

    .line 43
    .line 44
    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    const p6, 0x7f130acd

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p5

    .line 55
    const/4 p6, 0x0

    .line 56
    invoke-static {p4, p5, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    iput-object p4, p3, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 67
    .line 68
    .line 69
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-lez p0, :cond_3

    .line 74
    .line 75
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    add-int/lit8 p0, p0, -0x1

    .line 80
    .line 81
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    const/16 p1, 0x262a

    .line 86
    .line 87
    const-string p3, ""

    .line 88
    .line 89
    if-eq p0, p1, :cond_2

    .line 90
    .line 91
    const/16 p1, 0x271d

    .line 92
    .line 93
    if-eq p0, p1, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    return-object p3

    .line 97
    :cond_3
    :goto_0
    return-object p2
.end method
