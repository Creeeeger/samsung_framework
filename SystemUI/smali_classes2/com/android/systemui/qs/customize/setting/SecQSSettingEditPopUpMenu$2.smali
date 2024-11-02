.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
