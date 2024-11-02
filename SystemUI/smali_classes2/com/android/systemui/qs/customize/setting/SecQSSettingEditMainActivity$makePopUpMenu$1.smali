.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

.field public final synthetic $anchor:Landroid/view/View;

.field public final synthetic $type:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;Landroid/view/View;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->$anchor:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->$adapter:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->$type:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p1, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->$anchor:Landroid/view/View;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->$adapter:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;->$type:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

    .line 19
    .line 20
    const/4 v3, -0x2

    .line 21
    invoke-virtual {p1, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x800003

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;->setDropDownGravity(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;->show()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
