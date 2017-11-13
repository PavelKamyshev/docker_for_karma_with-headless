describe('Calculator', function() {
    // inject the HTML fixture for the tests
    beforeEach(function() {
        var fixture = '<div id="fixture"></div>';

        document.body.insertAdjacentHTML('afterbegin', fixture);
    });

    it('element should exists', function() {
        expect(document.getElementById('fixture')).to.exist;
    });
});
