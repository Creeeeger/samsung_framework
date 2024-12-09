package com.sec.internal.ims.servicemodules.ss;

import com.sec.internal.ims.servicemodules.ss.SsRuleData;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CallBarringData extends SsRuleData {

    static class Rule extends SsRuleData.SsRule {
        boolean allow;
        List<ActionElm> actions = new ArrayList();
        List<String> target = new ArrayList();

        Rule() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.sec.internal.ims.servicemodules.ss.SsRuleData
    public Rule getRule(int i, MEDIA media) {
        Rule rule = (Rule) findRule(i, media);
        return rule != null ? rule : makeRule(i, media);
    }

    static Rule makeRule(int i, MEDIA media) {
        Rule rule = new Rule();
        SsRuleData.makeInternalRule(rule, i, media);
        rule.allow = false;
        return rule;
    }

    @Override // com.sec.internal.ims.servicemodules.ss.SsRuleData
    void copyRule(SsRuleData.SsRule ssRule) {
        Rule rule = (Rule) ssRule;
        Rule rule2 = new Rule();
        rule2.allow = rule.allow;
        rule2.target.addAll(rule.target);
        rule2.actions.addAll(rule.actions);
        super.copySsRule(rule, rule2);
    }

    @Override // com.sec.internal.ims.servicemodules.ss.SsRuleData
    /* renamed from: clone */
    public final CallBarringData mo1178clone() {
        CallBarringData callBarringData = new CallBarringData();
        cloneSsDataInternal(callBarringData);
        return callBarringData;
    }
}
