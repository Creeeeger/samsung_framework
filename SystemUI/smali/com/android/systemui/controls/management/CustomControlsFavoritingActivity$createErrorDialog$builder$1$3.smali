.class public final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$3;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p3, 0x4

    .line 2
    if-ne p2, p3, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$3;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 5
    .line 6
    sget p2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->onBackPressed()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method
