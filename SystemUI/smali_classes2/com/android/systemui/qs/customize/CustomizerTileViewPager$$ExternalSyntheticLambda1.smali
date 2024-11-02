.class public final synthetic Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 2
    .line 3
    sget p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->$r8$clinit:I

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
