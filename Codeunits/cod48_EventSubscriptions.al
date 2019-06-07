codeunit 50148 "CSD Event Subscriptions"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Company-Initialize", 'OnCompanyInitialize', '', true, true)]
    local procedure InitSeminarSetupOnCompanyInitialize()
    var
        SeminarSetup: Record "CSD Seminar Setup";
    begin
        if SeminarSetup.IsEmpty then begin
            SeminarSetup.init;
            SeminarSetup.Insert();
        end;
    end;
}